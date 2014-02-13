class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :content
      t.datetime :created
      t.timestamps
    end
  end
end
