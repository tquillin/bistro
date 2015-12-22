class CreateParties < ActiveRecord::Migration
  def change
    create_table :parties do |t|
      t.integer :table_number
      t.integer :number_of_guests
      t.integer :paid
      t.references :staff, index: true, foreign_key: true
    end
  end
end
