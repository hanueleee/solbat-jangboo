class CreateTradeItems < ActiveRecord::Migration[7.1]
  def change
    create_table :trade_items do |t|
      t.references :trade, null: false, index: true, comment: '거래'
      t.references :itemable, polymorphic: true, null: false, comment: '거래품목'

      t.decimal :unit_price, null: false, default: 0, precision: 15, scale: 0, comment: '단가'
      t.integer :quantity, null: false, default: 1, comment: '수량'

      t.decimal :net_price, null: false, default: 0, precision: 15, scale: 0, comment: '금액'
      t.decimal :vat_price, null: false, default: 0, precision: 15, scale: 0, comment: '세액'
      t.decimal :total_price, null: false, default: 0, precision: 15, scale: 0, comment: '총금액'

      t.timestamps
    end
  end
end
