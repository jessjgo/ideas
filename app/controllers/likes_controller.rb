class LikesController < ApplicationController
	def create
		post = Post.where(id: params[:post_id]).first
		# if post.likes.where(user_id: current_user.id).nil?
		like = Like.create(user_id: current_user.id, post_id: params[:post_id])
		redirect_to '/bright_ideas'
		# end
	end

	def destroy
	end
end
