class AddPosthomeToWork < ActiveRecord::Migration
  def change
    add_column :works, :posthome, :boolean
  end
end
