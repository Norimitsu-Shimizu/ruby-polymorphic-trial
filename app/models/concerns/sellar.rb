module Sellar
  extend ActiveSupport::Concern

  included do
    has_many :market_trade, as: :sellar
    has_many :family_restaurant, through: :market_trade, source: :buyer, source_type: 'FamilyRestaurant'
    has_many :noodle_restaurant, through: :market_trade, source: :buyer, source_type: 'NoodleRestaurant'
    has_many :sushi_restaurant, through: :market_trade, source: :buyer, source_type: 'SushiRestaurant'
  end
end