class ContactMailer < ActionMailer::Base
  
  default from: "\"nath@nathanliddlehulme.com\"<nath@nathanliddlehulme.com>"
  
  def initiate_user(user)
    @user = user
    mail(to: @user.email, subject: "Thankyou for signing up!")
  end
  
  def initiate_admin(user)
    @user = user
    mail(from: @user.email, to: "ed_hamilton@live.com", bcc: "", subject: "New message from the website!")
  end
  
  def contacts_xls(contacts, user)
    @contacts = contacts
    @user = User.find_by_id(user)
    @filename = "Contacts List.xls"
    attachments[@filename] = {:mime_type => 'text/xls', :content => render(:file => 'contacts/contacts_xls.xls.erb')}
    mail(:to => "#{@user.email}", :subject => "Website contacts list attached", :body => "")
  end
  
end