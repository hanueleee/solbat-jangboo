class ChangeBasicAmountFieldNameInTrade < ActiveRecord::Migration[7.1]
  def change
    rename_column :trades, :basic_amount, :net_amount
  end
end
