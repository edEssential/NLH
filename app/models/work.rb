class Work < ActiveRecord::Base
  attr_accessible :about, :client, :title, :category_id, :home_url, :homepageinfo, :posthome, :large_url, :small_url, :image
  belongs_to :category
  
  before_save :create_sizes
  
  has_attached_file :image, styles: {
      thumb: '100x100>',
      square: '200x200#',
      medium: '220X133>'
    }
  
  auto_html_for :home_url do
    youtube(:width => 331, :height => 200)
    vimeo(:width => 331, :height => 200)
    link :target => "_blank", :rel => "nofollow"
    simple_format
  end
  
  auto_html_for :small_url do
    youtube(:width => 220, :height => 133)
    vimeo(:width => 220, :height => 133)
    link :target => "_blank", :rel => "nofollow"
    simple_format
  end
  
  auto_html_for :large_url do
    youtube(:width => 945, :height => 616)
    vimeo(:width => 945, :height => 616)
    link :target => "_blank", :rel => "nofollow"
    simple_format
  end
  
  protected
  
  def create_sizes
    self.large_url = self.home_url
    self.small_url = self.home_url
  end  
  
end
