class ChangeUsesSpecialItemBookFieldNameInPartner < ActiveRecord::Migration[7.1]
  def change
    rename_column :partners, :uses_special_item_book, :uses_exclusive_item_book
  end
end
