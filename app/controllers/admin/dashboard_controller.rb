class Admin::DashboardController < ApplicationController
  layout 'admin'
  
  before_filter :authorize

  def index
  end

  private

  def authorize
    redirect_to log_in_path unless session[:user_id]
  end
end
