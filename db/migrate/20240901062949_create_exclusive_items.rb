class CreateExclusiveItems < ActiveRecord::Migration[7.1]
  def change
    create_table :exclusive_items do |t|
      t.references :partner, null: false, index: true, comment: '거래처'
      t.references :basic_item, null: false, index: true, comment: '기준품목'
      t.decimal :exclusive_price, precision: 15, scale: 0, null: false, comment: '전용단가'

      t.timestamps
    end

    add_index :exclusive_items, [:partner_id, :basic_item_id], unique: true
  end
end
