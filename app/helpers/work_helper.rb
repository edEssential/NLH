module WorkHelper
  
  def counter
    if @work.count == 1
  		"videoHolder1"
  	elsif @work.count == 2
  		"videoHolder2"
  	elsif @work.count == 3
  	  "videoHolder3"
  	else
  	  "videoHolder"
  	end
  end
  
end