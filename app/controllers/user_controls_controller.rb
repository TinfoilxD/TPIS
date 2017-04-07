class UserControlsController < ApplicationController
  include ApplicationHelper

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

  def candidate
    @candidates = User.where(role: :candidate)
  end

  def staff
    @staffs  = User.where.not(role: :candidate)
  end

  def security_question_render
    @user = User.where(email: params[:email]).first
    question_list = security_questions.first
    question_text = question_list[@user.security_question]
    render :json => {security_question: question_text}
  end

  def answer_check
    params.permit(:email, :answer)
    @user = User.where(email: params[:email]).first
    if(@user.security_answer == params[:answer])
      render :json => {:correct => true}
    else
      render :json => {:correct => false}
    end

  end
end