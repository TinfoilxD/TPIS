class AdminController < ApplicationController
  def user_controls
    @users = User.all
  end
  def edit_user
    @user = User.find(params[:id])
  end
end