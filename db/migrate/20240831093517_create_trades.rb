class CreateTrades < ActiveRecord::Migration[7.1]
  def change
    create_table :trades do |t|
      t.references :partner, null: false, index: true, comment: '거래처'

      t.date :trade_date, null: false, comment: '거래일자'
      t.integer :trade_type, null: false, default: 0, comment: '거래구분(입고/출고/반입/반출/입금/출금)'
      t.string :title, null: false, comment: '제목'
      t.integer :payment_method, null: false, default: 0, comment: '거래방법(현금/외상)'

      t.decimal :basic_amount, precision: 15, scale: 0, null: false, comment: '금액'
      t.decimal :vat_amount, precision: 15, scale: 0, comment: '부가세'
      t.decimal :total_amount, precision: 15, scale: 0, comment: '총금액'

      t.decimal :received_amount, precision: 15, scale: 0, comment: '입금액'
      t.decimal :payment_amount, precision: 15, scale: 0, comment: '출금액'
      t.decimal :receivable_amount, precision: 15, scale: 0, comment: '미수금액'
      t.decimal :payable_amount, precision: 15, scale: 0, comment: '미지급금액'

      t.text :note, comment: '비고'

      t.timestamps
    end
  end
end
