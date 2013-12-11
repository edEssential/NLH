class AddUrlLargeToWork < ActiveRecord::Migration
  def change
    add_column :works, :url_large, :string
  end
end
