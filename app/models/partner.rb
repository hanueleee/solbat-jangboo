# == Schema Information
#
# Table name: partners
#
#  id                           :integer          not null, primary key
#  address                      :string
#  business_registration_number :string
#  is_vat_applicable            :boolean          default(FALSE)
#  name                         :string           not null
#  note                         :text
#  partner_type                 :integer          default("seller")
#  phone_number                 :string
#  primary_payment_method       :integer          default("cash")
#  representative               :string
#  uses_exclusive_item_book     :boolean          default(FALSE)
#  created_at                   :datetime         not null
#  updated_at                   :datetime         not null
#
class Partner < ApplicationRecord
  has_many :trades
  has_many :exclusive_items

  # seller (매출처. 물건 파는) / buyer (매입처. 물건 사오는) / both (매입매출처)
  enum partner_type: { seller: 0, buyer: 10, both: 20 }

  # cash (현금거래. 대금 즉시 결제) / credit (외상거래. 대금 나중에 결제)
  enum primary_payment_method: { cash: 0, credit: 10 }
end
