class MenuItem < ActiveRecord::Base
  has_many :ordered_items
  has_many :parties, through: :ordered_items
end
