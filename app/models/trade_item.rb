# == Schema Information
#
# Table name: trade_items
#
#  id            :integer          not null, primary key
#  itemable_type :string           not null
#  net_price     :decimal(15, )    default(0), not null
#  quantity      :integer          default(1), not null
#  total_price   :decimal(15, )    default(0), not null
#  unit_price    :decimal(15, )    default(0), not null
#  vat_price     :decimal(15, )    default(0), not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  itemable_id   :integer          not null
#  trade_id      :integer          not null
#
# Indexes
#
#  index_trade_items_on_itemable  (itemable_type,itemable_id)
#  index_trade_items_on_trade_id  (trade_id)
#
class TradeItem < ApplicationRecord
  belongs_to :trade
  belongs_to :itemable, polymorphic: true

  validates :unit_price, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
