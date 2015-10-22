class Admin::BrandsController < ApplicationController
  layout 'admin'

  def index
    @brands = Brand.all
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
