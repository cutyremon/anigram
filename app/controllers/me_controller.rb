class MeController < ApplicationController
	 def create
  	 @friends = User.fbfriends
  	session[:user_id] = @user.id
	redirect_to :me
  end
end
