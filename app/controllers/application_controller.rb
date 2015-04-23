class ApplicationController < ActionController::Base
  layout "login"
  protect_from_forgery with: :exception
  helper_method :current_user
  helper_method :data

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  protect_from_forgery with: :exception
end