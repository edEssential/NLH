class AddSmallUrlToWork < ActiveRecord::Migration
  def change
    add_column :works, :small_url, :string
  end
end
