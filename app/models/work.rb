class Work < ActiveRecord::Base
  attr_accessible :about, :client, :title, :category_id, :url, :homepageinfo, :posthome, :image
  belongs_to :category
  
  #validates :image, :dimensions => { :width => 738, :height => 448 }, :if => :image_present?

  
  #before_save :create_sizes
  
  has_attached_file :image, styles: {
      thumb: '100x100>',
      square: '200x200#',
      medium: '738X448>'
    }
  
  auto_html_for :url do
    youtube(:width => 945, :height => 616)
    vimeo(:width => 945, :height => 616)
    link :target => "_blank", :rel => "nofollow"
    simple_format
  end
  
  #auto_html_for :second_url do
    #youtube(:width => 561, :height => 366)
    #vimeo(:width => 561, :height => 366)
    #link :target => "_blank", :rel => "nofollow"
    #simple_format
  #end
  
  #auto_html_for :third_url do
   #youtube(:width => 430, :height => 281)
   # vimeo(:width => 430, :height => 281)
    #link :target => "_blank", :rel => "nofollow"
    #simple_format
  #end
  
  #auto_html_for :fourth_url do
   # youtube(:width => 300, :height => 196)
   # vimeo(:width => 300, :height => 196)
   # link :target => "_blank", :rel => "nofollow"
   # simple_format
  #end
  
  #auto_html_for :home_url do
    #youtube(:width => 331, :height => 200)
    #vimeo(:width => 331, :height => 200)
    #link :target => "_blank", :rel => "nofollow"
    #simple_format
  #end
  
  #auto_html_for :small_url do
    #youtube(:width => 220, :height => 133)
    #vimeo(:width => 220, :height => 133)
    #link :target => "_blank", :rel => "nofollow"
    #simple_format
  #end
  
  #protected
  
  #def create_sizes
  #  self.large_url = self.home_url
  #  self.small_url = self.home_url
  #  self.second_url = self.home_url
  #  self.third_url = self.home_url
  #  self.fourth_url = self.home_url
  #end
  
end
