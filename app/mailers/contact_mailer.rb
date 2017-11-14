class ContactMailer < ApplicationMailer
  def send_contact(name, subject, message)
    @name = name
    @message = message
    mail(to: "admin@example.com", subject: subject)
  end
  
  def send_to_yourself(name, email, subject, message)
    @name = name
    @message = message
    mail(to: email, subject: subject)
  end
end
