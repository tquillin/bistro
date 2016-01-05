class CreateMenuItems < ActiveRecord::Migration
  def change
    create_table :menu_items do |t|
      t.string :name
      t.string :category
      t.string :description

      t.timestamps null: false
    end
  end
  def change
      change_table :menu_items do |t|
          t.string :food
          t.integer :price
          t.references :party
          t.references :staff
          t.references :ordered_item
      end
  end
end
