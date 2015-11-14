class ContactUsController < ApplicationController
  def index
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)

    if @contact.valid?
      ContactUsMailer.welcome_email(@contact).deliver
      redirect_to contact_us_path, notice: 'Email has been sent!'
    else
      render :index
    end
  end

  private
  def contact_params
    params.require(:contact).permit(:name, :sender, :body)
  end
end
