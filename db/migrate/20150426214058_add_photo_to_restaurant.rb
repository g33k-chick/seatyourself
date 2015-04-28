class AddPhotoToRestaurant < ActiveRecord::Migration
  def change
    add_column :restaurants, :photo, :url
  end
end
