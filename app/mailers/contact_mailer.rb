class ContactMailer < ApplicationMailer
	default :from => 'do-not-reply@theresaalianell.com'

	def contact_email(contact)
		@contact = contact
		mail(:to => 'alexchi1114@gmail.com', :subject => @contact.subject)
	end
end
