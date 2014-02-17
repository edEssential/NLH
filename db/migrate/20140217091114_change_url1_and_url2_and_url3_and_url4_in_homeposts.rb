class ChangeUrl1AndUrl2AndUrl3AndUrl4InHomeposts < ActiveRecord::Migration
  def up
      change_column :homeposts, :url1, :string, :limit => nil
      change_column :homeposts, :url2, :string, :limit => nil
      change_column :homeposts, :url3, :string, :limit => nil
      change_column :homeposts, :url4, :string, :limit => nil
  end
  def down
      change_column :homeposts, :url1, :string
      change_column :homeposts, :url2, :string
      change_column :homeposts, :url3, :string
      change_column :homeposts, :url4, :string
  end
end
