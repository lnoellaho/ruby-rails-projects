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
       redirect_to '/' #update the render to be redirect to the play view
    else
      render 'contacts/index'
    end
  end

  def getall
    @contacts = Contact.all
  end

  def updateform
    @contact = Contact.find(params[:id])
  end

  def update
    @contact = Contact.find(params[:id])

    @contact.update(
      firstname: params[:first_name],
      lastname: params[:last_name],
      email: params[:email],
      phone: params[:phone]
    )
    redirect_to "/contacts/#{@contact.id}"
  end

  def delete
    @contact = Contact.find(params[:id])
    @contact.destroy

    redirect_to '/'
  end

  def getone
    @contact = Contact.find(params[:id])
  end

end
