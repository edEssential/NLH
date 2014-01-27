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
    @work = Work.includes(:category).order("category_id")
    @work_categories = @work.group_by { |w| w.category.name }
    @work_categories = @work_categories.sort
  end
  
  # index when the work header action is dropdown list
  
  #def index
    #if params[:category]
      #@work = Work.where(:category_id => params[:category])
      #@category = @work.last.category.name
    #else
      #@work = Work.all
    #end
  #end
  
  def show
    @work = Work.find(params[:id])
    #if request.path != release_path(@release)
     # redirect_to @release, status: :moved_permanently
    #end
  end
  
end