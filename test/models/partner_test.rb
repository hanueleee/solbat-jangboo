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
require "test_helper"

class PartnerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
