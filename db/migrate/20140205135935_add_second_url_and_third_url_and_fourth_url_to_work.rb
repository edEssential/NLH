class AddSecondUrlAndThirdUrlAndFourthUrlToWork < ActiveRecord::Migration
  def change
    add_column :works, :second_url, :string
    add_column :works, :third_url, :string
    add_column :works, :fourth_url, :string
  end
end
