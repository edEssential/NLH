class ContactsController < ApplicationController
  before_filter :authenticate_user!, :except => [:index, :create] 
  
  def create
    @contact = Contact.where(:email => params[:contact][:email]).first_or_create do |contact|
      contact.attributes = params[:contact]
    end
    respond_to do |format|
      ContactMailer.initiate_user(@contact).deliver
      ContactMailer.initiate_admin(@contact).deliver
      format.html { redirect_to thanks_path }
    end
  end
  
  def index
    @contact = Contact.new
    @contacts = Contact.order(:name)
    respond_to do |format|
      format.html
      format.csv { send_data @contacts.to_csv }
    end
  end
  
  def edit
    @contact = Contact.find(params[:id])
  end
  
  def new
    @contact = Contact.new
  end

  def update   
    @contact = Contact.find(params[:id])
    if @contact.update_attributes(params[:contact])
      redirect_to :action => 'index'
    else
      render :action => 'edit'
    end
  end
  
  def thanks
    @contact = Contact.first
    @contact_last = Contact.last
  end

end