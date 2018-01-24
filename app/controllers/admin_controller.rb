class AdminController < ApplicationController
  def index
    if logged_in?
      if current_user.admin?
        @users = User.all()
      else
        redirect_to user_path(current_user)
      end
    else
      redirect_to root_path

    end
  end

  def block
    @user = User.find(params[:id])
    if @user.block == 0

      @user.block = 1
      @user.save!
      @user
      redirect_to admin_path
    else
      @user.block = 0
      @user.save!
      @user
      redirect_to admin_path
    end
  end
end

