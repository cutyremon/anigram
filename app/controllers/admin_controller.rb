class AdminController < ApplicationController
  def index
    @users = User.all().paginate(page: params[:page], per_page: 5)
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
