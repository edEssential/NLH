class FixContactTextInContacts < ActiveRecord::Migration
  def self.up
    rename_column :contacts, :contacttext, :thankstext
  end

  def self.down
    rename_column :contacts, :thankstext, :contacttext
  end
end
