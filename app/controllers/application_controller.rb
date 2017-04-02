class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
    pathing_path
  end

  def set_route_info
    session[:return_to] = request.url

    prev_route = Rails.application.routes.recognize_path(URI(session[:return_to]).path)


    session[:previous_controller] = prev_route[:action]
    session[:previous_action] = prev_route[:action]
  end

end
