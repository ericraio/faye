class RegistrationsController < Devise::RegistrationsController

  def create
    super
    @profile = Profile.create(:user_id => @user.id, :gender => '??')
  end

end
