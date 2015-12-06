class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_action  :set_profile
  before_action  :set_locale
  protect_from_forgery with: :exception

  helper_method :current_user

  def default_url_options
    { locale: params[:locale] }
  end

  protected
  
  def set_profile
    @profile ||= Profile.first
  end

  def set_locale
    ::I18n.locale = params[:locale]
  end

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
end
