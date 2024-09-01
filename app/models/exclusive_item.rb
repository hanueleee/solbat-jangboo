# == Schema Information
#
# Table name: exclusive_items
#
#  id              :integer          not null, primary key
#  exclusive_price :decimal(15, )    not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  basic_item_id   :integer          not null
#  partner_id      :integer          not null
#
# Indexes
#
#  index_exclusive_items_on_basic_item_id                 (basic_item_id)
#  index_exclusive_items_on_partner_id                    (partner_id)
#  index_exclusive_items_on_partner_id_and_basic_item_id  (partner_id,basic_item_id) UNIQUE
#
class ExclusiveItem < ApplicationRecord
  belongs_to :partner
  belongs_to :basic_item

  validates :exclusive_price, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
