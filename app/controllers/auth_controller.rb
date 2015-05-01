class AuthController < ApplicationController
  layout :resolve_layout
  private

  def resolve_layout
    case action_name
    when "index", "register"
      "application"
    when "login"
      "login"
    else
      "application"
    end
  end

  def index
  end

  def register
  end

  def login
  end

  def logout
    session[:user_id] = nil
    redirect_to root_path
  end
end
