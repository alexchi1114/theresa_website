class ContactsController < ApplicationController
	def new
		@contact = Contact.new
	end

	def create
		@contact = Contact.new(contact_params)
    	if @contact.save
    	  flash[:success] = "Thank you for your message. We will get back to you shortly."
          ContactMailer.contact_email(@contact).deliver
    	  redirect_to root_url
    	else
      	render 'new'
    	end
	end

	private 
  	def contact_params
  		params.require(:contact).permit(:name, :subject, :email, :body)                       
 	 end
end
