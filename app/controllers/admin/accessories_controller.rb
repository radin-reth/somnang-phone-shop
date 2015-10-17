class Admin::AccessoriesController < ApplicationController
  layout 'admin'
  before_action :set_accessory, except: [:index, :new]

  def index
    @accessories = Accessory.all
  end

  def new
  end

  def edit
  end

  def create
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
    
  end
end
