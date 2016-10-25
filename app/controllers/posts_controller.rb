class PostsController < ApplicationController
	def index
		@user = User.where(id: session[:user_id]).first
		@posts = Post.all
		render 'posts/index'
	end

	def show
		@post = Post.where(id: params[:id]).first
		@post_user = User.where(id: @post).first

		@users_liked_post = @post.users_liked_post

		@users_liked_post_count = @post.users_liked_post.count

		# @post_count = @user.posts.count

		# @likes_count = @user.posts_they_liked.count

		render 'posts/show'
	end

	def create
		post = Post.new(content: params[:content], user: current_user)
		if post.save
			redirect_to '/bright_ideas'
		end
	end

	def destroy
		post = Post.where(id: params[:id]).first
		post.destroy if post.user == current_user
		redirect_to "/bright_ideas"
	end
end
