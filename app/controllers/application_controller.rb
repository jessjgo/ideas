class ApplicationController < ActionController::Base
	# Prevent CSRF attacks by raising an exception.
	# For APIs, you may want to use :null_session instead.
	protect_from_forgery with: :exception
	def current_user
	# User.find(session[:user_id]) if session[:user_id]
	User.where(id: session[:user_id]).first if session[:user_id]
	end

	def require_login
		redirect_to '/' if session[:user_id] == nil
	end

	def require_correct_user
		user = User.where(id: params[:id]).first
		# user = User.find(params[:id])
		redirect_to "/" if current_user != user
	end

	helper_method :current_user
end