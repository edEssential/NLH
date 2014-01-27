module WorkHelper
  
  def counter
    if @work_categories.count == 1
  		"howWide1"
  	elsif @work_categories.count == 2
  		"howWide2"
  	elsif @work_categories.count == 3
  	  "howWide3"
  	else
  	  "howWide"
  	end
  end
  
end