class Post < ActiveRecord::Base
	belongs_to :user
	has_many :likes
	has_many :users_liked_post, through: :likes, source: :user

	validates :content, presence: true
end


# finds all users that have liked post 1
# Post.where(id:1).first.users_liked_post