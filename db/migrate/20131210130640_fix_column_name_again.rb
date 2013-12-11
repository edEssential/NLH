class FixColumnNameAgain < ActiveRecord::Migration
  def self.up
    rename_column :works, :url_large, :large_url
  end

  def self.down
    rename_column :works, :large_url, :url_large
  end
end
