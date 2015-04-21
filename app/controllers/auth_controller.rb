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
end
