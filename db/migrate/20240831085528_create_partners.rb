class CreatePartners < ActiveRecord::Migration[7.1]
  def change
    create_table :partners do |t|
      t.string :name, null: false, comment: '거래처명'
      t.string :business_registration_number, comment: '사업자등록번호'
      t.string :representative, comment: '대표자'
      t.string :address, comment: '주소'
      t.string :phone_number, comment: '전화번호'

      t.integer :partner_type, default: 0, comment: '거래처 타입(매출처/매입처/매입매출처)'
      t.integer :primary_payment_method, default: 0, comment: '주거래방식(현금거래/외상거래)'

      t.boolean :uses_special_item_book, default: false, comment: '전용품목대장 사용 여부'
      t.boolean :is_vat_applicable, default: false, comment: '(입출고시) 부가세 적용 여부'

      t.text :note, comment: '비고'

      t.timestamps
    end
  end
end
