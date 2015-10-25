class ProfileController < ApplicationController
  def index
    @profiles = Profile.all
  end
end
