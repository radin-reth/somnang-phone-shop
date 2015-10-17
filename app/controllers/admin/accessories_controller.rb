class Admin::AccessoriesController < ApplicationController
  layout 'admin'

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
  end
end
