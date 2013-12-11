class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.string :title
      t.string :about
      t.string :client

      t.timestamps
    end
  end
end
