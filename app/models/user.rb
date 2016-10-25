class User < ActiveRecord::Base
	has_secure_password
	has_many :posts
	has_many :likes
	has_many :posts_they_liked, through: :likes, source: :post

	EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
	validates :name, :email, :alias, presence: true
	validates :email, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }
	validates :password, length: {minimum: 8}, presence: true, on: :create
	validates_confirmation_of :password, allow_blank: true
end


# finds all posts liked by user 1
# User.where(id:1).first.posts_they_liked