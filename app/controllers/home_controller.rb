class HomeController < ApplicationController
  def index
    @phones = Phone.page(params[:page]).per(5)
  end
end
