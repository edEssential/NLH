class CreateHomeposts < ActiveRecord::Migration
  def change
    create_table :homeposts do |t|
      t.string :url1
      t.string :url2
      t.string :url3
      t.string :url4
      t.string :title1
      t.string :title2
      t.string :title3
      t.string :title4
      t.text :info

      t.timestamps
    end
  end
end
