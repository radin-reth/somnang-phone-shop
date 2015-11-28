class Admin::ProfileController < ApplicationController
  layout 'admin'
  before_action :set_profile, except: [:index, :new, :create]

  def index
    @profiles = Profile.all
  end

  def new
    @profile = Profile.new
  end

  def edit
  end

  def create
    @profile = Profile.new(profile_params)

    if @profile.save!
      redirect_to admin_profile_index_path, notice: "Profile has been created!"
    else
      render @profile
    end
  end

  def update
    if @profile.update_attributes!(profile_params)
      redirect_to admin_profile_index_path, notice: "Profile has been updated!"
    else
      render @profile
    end
  end

  def show
  end

  def destroy
    @profile.destroy

    redirect_to admin_profile_index_path, notice: "Profile has been deleted!"
  end

  private
  
  def set_profile
    @profile = Profile.find(params[:id])
  end

  def profile_params
    params.require(:profile).permit(:email, :phone_number, :description, :recommend)
  end
end
