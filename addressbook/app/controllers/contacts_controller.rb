class ContactsController < ApplicationController
  def index
  end

  def add
    @contact = Contact.new
    @contact.firstname = params[:first_name]
    @contact.lastname = params[:last_name]
    @contact.email = params[:email]
    @contact.phone = params[:phone]

    if @contact.save
      cookies[:contact_id] = @contact.id
       redirect_to '/contacts/getall' #update the render to be redirect to the play view
    else
      render 'contacts/index'
    end
  end

  def getall
    @contacts = Contact.all
  end
end
