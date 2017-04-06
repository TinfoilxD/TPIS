class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    pathing_path
  end

  def set_route_info
    session[:return_to] = request.url

    prev_route = Rails.application.routes.recognize_path(URI(session[:return_to]).path)


    session[:previous_controller] = prev_route[:action]
    session[:previous_action] = prev_route[:action]
  end
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:security_question, :security_answer])
    devise_parameter_sanitizer.permit(:account_update, keys: [:security_question, :security_answer])
  end


end
