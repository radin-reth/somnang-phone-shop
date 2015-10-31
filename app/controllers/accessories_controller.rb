class AccessoriesController < ApplicationController
  def index
    @brands = Brand.all
    @accessories = Accessory.page(params[:page]).per(12)
  end

  def show
    @accessory = Accessory.find(params[:id])
  end
end
