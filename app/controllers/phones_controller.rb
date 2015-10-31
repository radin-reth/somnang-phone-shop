class PhonesController < ApplicationController
  def index
    @phones = Phone.all
  end

  def show
    @phone = Phone.find(params[:id]).decorate
  end

  def special_promotion
    @phones = Phone.with_promotion
  end
end
