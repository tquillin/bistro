class CreateOrderedItems < ActiveRecord::Migration
  def change
    create_table :ordered_items do |t|
      t.references :party, index: true, foreign_key: true
      t.references :menu_item, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
