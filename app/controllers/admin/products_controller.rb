class Admin::ProductsController < ApplicationController
  layout 'admin'
  
  def index
  end

  def new
    @phone = Phone.new
    @phone.brand = Brand.new
    @phone.specification = Specification.new
    @phone.accessories.build
  end

  def create
    @phone = Phone.new(phone_params)
    if @phone.save!
      redirect_to admin_products_path, notice: "#{@phone.name} has been saved!"
    else
      render @phone
    end
  end

  private

  def phone_params
    params.require(:phone).permit(:name, :price, :status, :description, :availability, :promotion, brand_attributes: [:name], specification_attributes: [:model, :memory, :storage, :camera, :processor], accessory_ids: [])
  end
end
