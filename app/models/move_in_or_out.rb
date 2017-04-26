class MoveInOrOut < ApplicationRecord

  validates :Equipment, :presence => true
  validates :IP, :presence => true
  validates :InOrOut, :presence => true
  validates :Date, :presence => true
end
