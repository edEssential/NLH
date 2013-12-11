class AddHeaderToWork < ActiveRecord::Migration
  def change
    add_column :works, :header, :string
  end
end
