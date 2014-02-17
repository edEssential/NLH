class ChangeUrlsInHomeposts < ActiveRecord::Migration
   def up
        change_column :homeposts, :url1, :string, :limit => nil
        change_column :homeposts, :url2, :string, :limit => nil
        change_column :homeposts, :url3, :string, :limit => nil
        change_column :homeposts, :url4, :string, :limit => nil
    end
    def down
        change_column :homeposts, :url1, :text
        change_column :homeposts, :url2, :text
        change_column :homeposts, :url3, :text
        change_column :homeposts, :url4, :text
    end
  end
