class Admin::AboutUsController < ApplicationController
  layout 'admin'
  before_action :set_about_us, except: [:index, :new, :create]

  def index
    @abouts_us = AboutUs.all
  end

  def new
    @about_us = AboutUs.new
  end

  def edit
  end

  def create
    @about_us = AboutUs.new(about_us_params)
    if @about_us.save
      if params[:avatars].present?
        params[:avatars].each do |image|
          @about_us.pictures.create(avatar: image)
        end
      end

      redirect_to admin_about_us_path, notice: "#{@about_us.name} has been created!"
    else
      render @about_us
    end
  end

  def update
    if @about_us.update_attributes!(about_us_params)
      redirect_to admin_about_us_path, notice: "#{@about_us.name} has been updated!"
    else
      render @about_us
    end
  end

  def show
  end

  def destroy
    @about_us.destroy

    redirect_to admin_about_us_path, notice: "#{@about_us.name} has been deleted!"
  end

  private

  def set_about_us
    @about_us = AboutUs.find(params[:id])
  end

  def about_us_params
    params.require(:about_us).permit(:name, :description)
  end
end
