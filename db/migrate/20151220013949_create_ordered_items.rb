class CreateOrderedItems < ActiveRecord::Migration
  def change
      create_table :ordered_items do |t|
        t.integer :menu_item
        t.integer :party
      end
  end
  def change
      change_table :ordered_items do |t|
        t.references :party
      end
  end
  def change
      change_table :ordered_items do |t|
          t.references :party
          t.references :menu_item_id
          t.references :staff
      end
  end
end
