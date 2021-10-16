class CreateMarketTrades < ActiveRecord::Migration[6.1]
  def change
    create_table :market_trades do |t|
      t.references :sellar, polymorphic: true, index: true
      t.references :buyer, polymorphic: true, index: true

      t.timestamps
    end
    add_index "market_trades", ["sellar_type", "sellar_id"], name: "index_market_trades_on_sellar_type_and_id", using: :btree
    add_index "market_trades", ["buyer_type", "buyer_id"], name: "index_market_trades_on_buyer_type_and_id", using: :btree
  end
end
