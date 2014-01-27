class FixDescriptionInContacts < ActiveRecord::Migration
  def self.up
    rename_column :contacts, :description, :thankstitle
  end

  def self.down
    rename_column :contacts, :thankstitle, :description
  end
end
