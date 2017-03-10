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
    @user = User.find(params[:id])
    user_params
    @user.skip_reconfirmation!
    @user.update_attributes(:id => params[:id],:email => params[:email],:role => params[:role])
    redirect_to admin_user_controls_path
  end

  def user_params
    params.permit(:id, :email, :role)
  end
end