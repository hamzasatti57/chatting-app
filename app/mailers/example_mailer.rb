class ExampleMailer < ApplicationMailer
  default from: "hamza@example.com"
  
  def sample_email(user)
    @user = user
    mail(to: @user.email, subject: 'Welcome Email')
  end
end
