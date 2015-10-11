class PhonesController < ApplicationController
  def index
    @phones = Phone.all
  end

  def show
  end

  def special_promotion
  end
end
