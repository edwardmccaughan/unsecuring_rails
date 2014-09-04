class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
    cookies[:current_user] = current_user.email
    posts_path
  end


  before_filter :disable_xss_protection

  def disable_xss_protection
    response.headers['X-XSS-Protection'] = "0"
  end


end
