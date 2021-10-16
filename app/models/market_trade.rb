class MarketTrade < ApplicationRecord
  belongs_to :sellar, polymorphic: true
  belongs_to :buyer, polymorphic: true
end
