class SessionsController < ApplicationController
	def new
		if logged_in?
			redirect_to user_path(current_user)
		end
	end

	def create
		user = User.find_by(email: params[:session][:email].downcase)
		if user && user.authenticate(params[:session][:password])
			log_in user
			params[:session][:remember_me] == "1" ? remember(user) : forget(user)
			redirect_back_or user
		else
			@error = "Invalid email or password"
			render 'new'
		end
	end
	def creategoogle
  	 @user = User.find_or_create_from_auth_hash(request.env["omniauth.auth"])
  	if @user.save
      log_in @user
      redirect_to @user
    else
      render 'new'
    end
	end

	def destroy
		log_out if logged_in?
		redirect_to root_url
	end
end