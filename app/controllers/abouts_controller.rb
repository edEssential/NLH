class AboutsController < ApplicationController
  
  def new
    @about = About.new
  end
  
  def create
    @about = About.create(params[:about])
    respond_to do |format|
      format.html { redirect_to about_path }
    end
  end
  
  def edit
    @about = About.find(params[:id])
  end

  def update   
    @about = About.find(params[:id])
    if @about.update_attributes(params[:about])
      respond_to do |format|
       format.html { redirect_to abouts_path }
      end
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @about = About.find(params[:id])
    @about.destroy
    respond_to do |format|
      format.html { redirect_to abouts_path }
    end
  end
  
  def index
    bring_in_the_first
  end
  
  def bring_in_the_first
    @about = About.first
  end
  
end