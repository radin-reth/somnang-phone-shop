class AboutUsController < ApplicationController
  def index
    @about_us = AboutUs.all
  end
end
