class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.text :summary
      t.integer :capacity
      t.datetime :open_time
      t.datetime :close_time
      t.string :website
      t.string :category
      t.string :photo

      t.timestamps null: false
    end
  end
end
