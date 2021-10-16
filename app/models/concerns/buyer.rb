#
# buyer用のポリモーフィックアソシエーションを定義
# このモジュールをincludeすることによりbuyerを使用できる
#
module Buyer
  extend ActiveSupport::Concern

  included do
    has_many :market_trade, as: :buyer
    has_many :fish_market, through: :market_trade, source: :sellar, source_type: 'FishMarket'
  end
end
