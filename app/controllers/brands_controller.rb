class BrandsController < ApplicationController
  def show
    @brands = Brand.all
    @brand  = @brands.find(params[:id])
    @phones = Kaminari.paginate_array(@brand.phones).page(params[:page]).per(5)
  end
end
