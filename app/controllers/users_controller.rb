class UsersController < ApplicationController
	def new
	end

	def index
	end

	def show
		@user = User.where(id: params[:id]).first
		@posts = @user.posts
		@post_count = @user.posts.count

		@likes_count = @user.posts_they_liked.count
	end
end
