class Admin::PhonesController < ApplicationController
  layout 'admin'
  
  def index
    @phones = Phone.all
  end

  def new
    @phone = Phone.new
    @phone.brand = Brand.new
    @phone.specification = Specification.new
    @phone.accessories.build
  end

  def edit
    @phone = Phone.find(params[:id])
  end

  def create
    @phone = Phone.new(phone_params)
    if @phone.save!
      redirect_to admin_phones_path, notice: "#{@phone.name} has been saved!"
    else
      render @phone
    end
  end

  def update
    @phone = Phone.find(params[:id])
    if @phone.update_attributes!(phone_params)
      redirect_to admin_phones_path, notice: "#{@phone.name} has been updated!"
    else
      render @phone
    end
  end

  def show
    @phone = Phone.find(params[:id]).decorate
  end

  def destroy
    @phone = Phone.find(params[:id])
    @phone.destroy
    
    redirect_to admin_phones_path, notice: "#{@phone.name} has been deleted!"
  end

  private

  def phone_params
    params.require(:phone).permit(:name, :price, :status, :description, :availability, :promotion, brand_attributes: [:name], specification_attributes: [:model, :memory, :storage, :camera, :processor], accessory_ids: [])
  end
end
