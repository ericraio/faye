class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :episode

  validates_presence_of :comment_body
end
