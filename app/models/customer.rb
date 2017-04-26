class Customer < ApplicationRecord
belongs_to :company
 validates :CompanyName, :presence => true
  validates :Name , :presence => true
  validates :Tel, :presence => true ,:length => {:minimum => 6}
  validates :Idno, :presence => true
  validates :Permission, :presence => true
end
