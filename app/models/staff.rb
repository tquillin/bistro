class Staff < ActiveRecord::Base
  has_secure_password
  has_many :parties
  validates :password, confirmation: true
  validates :password, length: { in: 6..20 }
end
