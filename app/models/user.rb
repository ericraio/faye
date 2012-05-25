class User < ActiveRecord::Base
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  devise :invitable, :database_authenticatable, :registerable, :recoverable, 
    :rememberable, :trackable, :validatable, :omniauthable

  attr_accessible :name, :email, :password, :password_confirmation, :remember_me, :confirmed_at, :avatar, :locale, :facebook_id, :facebook_avatar, :facebook_auth_token
  has_one :profile
  has_many :comments
  has_many :topics, :dependent => :destroy
  has_many :posts, :dependent => :destroy
  accepts_nested_attributes_for :profile
  has_settings

  def self.new_with_session(params, session)
    super.tap do |user|
      if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
        user.email = data["email"]
      end
    end
  end

  def self.find_for_facebook_oauth(access_token, signed_in_resource=nil)
    data = access_token.extra.raw_info
    if user = User.where(:email => data.email).first
      user
    else # Create a user with a stub password.
      User.create!(:facebook_id => access_token['uid'],
                   :facebook_avatar => access_token['info']['image'],
                   :facebook_auth_token => access_token['credentials']['token'],
                   :email => data.email,
                   :password => Devise.friendly_token[0,20])
    end
  end

  def update_with_password(params={})
    if params[:password].blank?
      params.delete(:password)
      params.delete(:password_confirmation) if params[:password_confirmation].blank?
    end
    update_attributes(params)
  end

  protected

  def send_confirmation_instructions
    generate_confirmation_token! if self.confirmation_token.nil?
    ::Devise.mailer.delay.confirmation_instructions(self)
  end
end
