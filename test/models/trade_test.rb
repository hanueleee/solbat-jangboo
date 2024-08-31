# == Schema Information
#
# Table name: trades
#
#  id                :integer          not null, primary key
#  basic_amount      :decimal(15, )    not null
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
require "test_helper"

class TradeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
