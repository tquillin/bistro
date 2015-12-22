class Party < ActiveRecord::Base
  belongs_to :staff
  has_many :ordered_items
  has_many :menu_items, through: :ordered_items
  validates :table_number, presence: true
end
