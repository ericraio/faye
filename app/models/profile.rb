class Profile < ActiveRecord::Base
  belongs_to :user
  attr_accessible :bio, :user_id, :gender
end
