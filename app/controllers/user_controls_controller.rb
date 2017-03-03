class UserControlsController < ApplicationController
  def user_controls
    @users = User.all
  end
  def edit_user
    @user = User.find(params[:id])
  end
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    if @user.destroy
      redirect_to admin_user_controls_path
    end
  end
  def update

  end
end