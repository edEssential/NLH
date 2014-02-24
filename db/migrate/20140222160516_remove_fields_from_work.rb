class RemoveFieldsFromWork < ActiveRecord::Migration
  def self.up
    remove_column :works, :home_url
    remove_column :works, :small_url
    remove_column :works, :second_url
    remove_column :works, :third_url
    remove_column :works, :fourth_url
  end

  def self.down
    add_column :works, :home_url, :string
    add_column :works, :small_url, :string
    add_column :works, :second_url, :string
    add_column :works, :third_url, :string
    add_column :works, :fourth_url, :string
  end
end
