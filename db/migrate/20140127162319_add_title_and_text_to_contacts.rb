class AddTitleAndTextToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :title, :string
    add_column :contacts, :text, :string
  end
end