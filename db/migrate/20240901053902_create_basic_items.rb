class CreateBasicItems < ActiveRecord::Migration[7.1]
  def change
    create_table :basic_items do |t|
      t.string :name, null: false, comment: '품목명'
      t.integer :unit, null: false, default: 0, comment: '단위'
      t.decimal :unit_price, precision: 15, scale: 0, null: false, comment: '단가'
      t.integer :stock, null: false, default: 0, comment: '재고'

      t.timestamps
    end
  end
end
