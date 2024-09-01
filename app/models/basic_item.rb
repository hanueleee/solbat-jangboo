# == Schema Information
#
# Table name: basic_items
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  stock      :integer          default(0), not null
#  unit       :integer          default("piece"), not null
#  unit_price :decimal(15, )    not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class BasicItem < ApplicationRecord
  validates :unit_price, presence: true, numericality: { greater_than_or_equal_to: 0 }

  enum unit: {
    piece: 0,       # 개
    box: 1,         # 박스
    roll: 2,        # 롤
    sheet: 3,       # 장
    pack: 4,        # 팩
    dozen: 5        # 다스
  }
end
