class VendorList < ApplicationRecord
  validates :Name,:presence => true
  validates :Tel,:presence => true
  validates :WorkTime,:presence => true
  validates :Type,:presence => true
end
