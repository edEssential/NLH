class WorksController < ApplicationController
  
  def new
    @work = Work.new
  end
  
  def create
    @work = Work.create(params[:work])
    respond_to do |format|
      format.html { redirect_to works_path }
    end
  end
  
  def edit
    @work = Work.find(params[:id])
  end

  def update   
    @work = Work.find(params[:id])
    if @work.update_attributes(params[:work])
      respond_to do |format|
       format.html { redirect_to works_path }
      end
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @work = Work.find(params[:id])
    @work.destroy
    respond_to do |format|
      format.html { redirect_to works_path }
    end
  end
  
  def index
    if params[:category]
      @work = Work.where(:category_id => params[:category])
      @category = @work.last.category.name
    else
      @work = Work.all
    end
  
  end
  
end