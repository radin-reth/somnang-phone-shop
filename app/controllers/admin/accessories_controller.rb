class Admin::AccessoriesController < ApplicationController
  layout 'admin'
  before_action :set_accessory, except: [:index, :new, :create]

  def index
    @accessories = Accessory.all
  end

  def new
    @accessory = Accessory.new
  end

  def edit
  end

  def create
    @accessory = Accessory.new(accessory_params)

    if @accessory.save!
      redirect_to admin_accessories_path, notice: "#{@accessory.name} has been created!"
    else
      render @accessory
    end
  end

  def update
  end

  def show
  end

  def destroy
    @accessory.destroy

    redirect_to admin_accessories_path, notice: "#{@accessory.name} has been deleted!"
  end

  private
  
  def set_accessory
    @accessory = Accessory.find(params[:id])
  end

  def accessory_params
    params.require(:accessory).permit(:name, :price, :description, :features)
  end
end
