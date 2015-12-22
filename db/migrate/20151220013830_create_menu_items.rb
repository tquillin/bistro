class CreateMenuItems < ActiveRecord::Migration
  def change
    create_table :menu_items do |t|
      t.string :name
      t.string :category
      t.string :description

      t.timestamps null: false
    end
  end
end
