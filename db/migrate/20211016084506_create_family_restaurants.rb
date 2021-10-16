class CreateFamilyRestaurants < ActiveRecord::Migration[6.1]
  def change
    create_table :family_restaurants do |t|
      t.string :name

      t.timestamps
    end
  end
end
