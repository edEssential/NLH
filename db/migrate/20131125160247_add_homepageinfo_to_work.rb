class AddHomepageinfoToWork < ActiveRecord::Migration
  def change
    add_column :works, :homepageinfo, :string
  end
end
