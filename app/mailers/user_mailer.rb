class UserMailer < Devise::Mailer   
  default from: 'support@2do.net'

  helper :application
  include Devise::Controllers::UrlHelpers 
  default template_path: 'devise/mailer'
  
  
  def confirmation_instructions(user, token, *args)
    @resource = user 
    @token = token

    mail(
      to: @resource.email, 
      subject: "Confirm account instructions", 
      tag: 'account-confirmation', 
      content_type: "text/html"
    ) 
  end

  def unlock_instructions(user, token, *args)
    @resource = user 
    @token = token

    mail(
      to: @resource.email, 
      subject: "Unlock account instructions", 
      tag: 'account-unlock', 
      content_type: "text/html"
    ) 
  end 

  def reset_password_instructions(user, token, *args)
    @resource = user
    @token = token
    
    mail(
      to: @resource.email, 
      subject: "Reset password instructions", 
      tag: 'account-confirmation', 
      content_type: "text/html"
    ) 
  end  
end
