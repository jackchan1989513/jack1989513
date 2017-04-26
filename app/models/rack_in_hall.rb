class RackInHall < ApplicationRecord

  validates :RackNo,:presence => true
  validates :CompanyName ,:presence => true
  validates :Equipment, :presence => true
end
