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
require "test_helper"

class BasicItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
