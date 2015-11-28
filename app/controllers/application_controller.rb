class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_action  :set_profile
  protect_from_forgery with: :exception

  helper_method :current_user


  protected
  
  def set_profile
    @profile ||= Profile.first
  end

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
end
