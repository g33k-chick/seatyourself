class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.text :summary
      t.integer :capacity
      t.time :open_time
      t.time :close_time
      t.string :website
      t.string :category

      t.timestamps null: false
    end
  end
end
