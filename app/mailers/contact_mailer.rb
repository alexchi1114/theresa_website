class ContactMailer < ApplicationMailer
	default :from => 'do-not-reply@theresaalianell.com'

	def contact_email(contact)
		@contact = contact
		mail(:to => 'drt26@frontiernet.net', :subject => @contact.subject)
	end
end
