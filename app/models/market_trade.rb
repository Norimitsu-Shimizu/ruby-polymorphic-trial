class MarketTrade < ApplicationRecord
  belongs_to :sellar, polymorphic: true
  belongs_to :buyer, polymorphic: true
  belongs_to :fish_market
  belongs_to :family_restaurant
  belongs_to :noodle_restaurant
  belongs_to :sushi_restaurant
end
