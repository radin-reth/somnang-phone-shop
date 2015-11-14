class ContactUsMailer < ActionMailer::Base
  default from: Proc.new{ @user.sender }

  def welcome_email(user)
    @user = user
    @url  = 'localhost'

    mail(to: "radin.reth@gmail.com", subject: 'welcome to my site')
  end
end
