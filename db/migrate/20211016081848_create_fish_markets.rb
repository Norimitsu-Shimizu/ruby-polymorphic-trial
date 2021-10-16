class CreateFishMarkets < ActiveRecord::Migration[6.1]
  def change
    create_table :fish_markets do |t|
      t.string :fish_name

      t.timestamps
    end
  end
end
