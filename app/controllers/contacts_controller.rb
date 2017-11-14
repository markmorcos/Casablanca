class ContactsController < ApplicationController
  def index
    @contact = Contact.new
  end
  
  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      ContactMailer.send_contact(params[:contact][:name], params[:contact][:subject], params[:contact][:message]).deliver_now
      if params[:yourself]
        ContactMailer.send_to_yourself(params[:contact][:name], params[:contact][:email], params[:contact][:subject], params[:contact][:message]).deliver_now
      end
      redirect_to contact_path, notice: t("contacts.success")
    else
      flash.now[:alert] = @contact.errors.full_messages
      render "index"
    end
  end
  
  def contact_params
    params.require(:contact).permit(:name, :email, :subject, :message)
  end
end
