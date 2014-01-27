class ThanksController < ApplicationController
  def index
    bring_in_first
    bring_in_last
  end
  
  def bring_in_first
    @contact_first = Contact.first
  end
  
  def bring_in_last
    @contact_last = Contact.last
  end
end