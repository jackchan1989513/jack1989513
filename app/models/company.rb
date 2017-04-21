class Company < ApplicationRecord
  validates :Name ,:presence => true
  validates :Authorization ,:presence => true
  validates :Phone, :presence => true
  validates :Email, :presence => true
  validates :Rack, :presence => true






  def self.abc(search)
    if search
      where(["Name LIKE?","%#{search}%"])
    else
      all
    end
  end
end
