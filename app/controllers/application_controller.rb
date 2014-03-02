class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def bring_in_models
    @works = Work.order("id DESC")
    @contact = Contact.new
    @contacts = Contact.all
    @admin = Contact.first
    @hompepost = Homepost.first
  end
  
end