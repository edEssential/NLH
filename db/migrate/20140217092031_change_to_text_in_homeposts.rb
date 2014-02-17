class ChangeToTextInHomeposts < ActiveRecord::Migration
  def up
      change_column :homeposts, :url1, :text, :limit => nil
      change_column :homeposts, :url2, :text, :limit => nil
      change_column :homeposts, :url3, :text, :limit => nil
      change_column :homeposts, :url4, :text, :limit => nil
  end
  def down
      change_column :homeposts, :url1, :text
      change_column :homeposts, :url2, :text
      change_column :homeposts, :url3, :text
      change_column :homeposts, :url4, :text
  end
end