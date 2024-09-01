# == Schema Information
#
# Table name: trades
#
#  id                :integer          not null, primary key
#  net_amount        :decimal(15, )    not null
#  note              :text
#  payable_amount    :decimal(15, )
#  payment_amount    :decimal(15, )
#  payment_method    :integer          default("cash"), not null
#  receivable_amount :decimal(15, )
#  received_amount   :decimal(15, )
#  title             :string           not null
#  total_amount      :decimal(15, )
#  trade_date        :date             not null
#  trade_type        :integer          default("in"), not null
#  vat_amount        :decimal(15, )
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  partner_id        :integer          not null
#
# Indexes
#
#  index_trades_on_partner_id  (partner_id)
#
class Trade < ApplicationRecord
  has_many :trade_items
  
  # in : 입고 : 물건이 들어옴 (=물건을 샀다)
  # out : 출고 : 물건이 나감 (=물건을 팔았다)
  # return_in : 반입 : 출고 -> 반입 (=팔았던 물건 중 일부 반품)
  # return_out : 반출 : 입고 -> 반출 (=샀던 물건 중 일부 반품) .. 근데 안 받아줘서 사실상 안 씀
  # deposit : 입금 : 출고해서 들어오는 돈 (=물건 팔고 받는 돈)
  # withdrawal : 출금 : 입고해서 나가는 돈 (=물건 사서 내는 돈)
  enum trade_type: { in: 0, out: 10, return_in: 20, return_out: 30, deposit: 40, withdrawal: 50 }

  # cash (현금거래. 대금 즉시 결제) / credit (외상거래. 대금 나중에 결제)
  enum payment_method: { cash: 0, credit: 10 }
end
