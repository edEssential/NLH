class FixColumnName < ActiveRecord::Migration
  def self.up
    rename_column :works, :url, :home_url
  end

  def self.down
    rename_column :works, :home_url, :url
  end
end