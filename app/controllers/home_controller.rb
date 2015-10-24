class HomeController < ApplicationController
  def index
    @phones = Phone.page(params[:page]).per(5)
    @brands = Brand.all
  end
end
