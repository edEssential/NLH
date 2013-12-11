class HomeController < ApplicationController
  
  def index
    bring_in_homepost
    bring_in_videos
  end
  
  def bring_in_homepost
    @homepost = Homepost.first
  end
  
  def bring_in_videos
    @work = Work.where(:posthome => true)
  end
  
end
