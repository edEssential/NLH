class HomepostsController < ApplicationController
  
   def new
     @homepost = Homepost.new
   end

   def create
     @homepost = Homepost.create(params[:homepost])
     respond_to do |format|
       format.html { redirect_to root_path }
     end
   end

   def show
     respond_to do |format|
       format.html { redirect_to root_path }
     end
   end

   def edit
     @homepost = Homepost.find(params[:id])
   end

   def update   
     @homepost = Homepost.find(params[:id])
     if @homepost.update_attributes(params[:homepost])
       redirect_to :action => 'show', :id => @homepost
     else
       render :action => 'edit'
     end
   end


   def destroy
     @homepost = Homepost.find(params[:id])
     @homepost.destroy
     respond_to do |format|
       format.html { redirect_to root_path }
     end
   end
  
end
