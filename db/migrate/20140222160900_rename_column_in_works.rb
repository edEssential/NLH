class RenameColumnInWorks < ActiveRecord::Migration
  def change
      rename_column :works, :large_url, :url
  end
end