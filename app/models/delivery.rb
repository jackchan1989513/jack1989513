class Delivery < ApplicationRecord
validates :Ticketno,:presence => true
  validates :Date, :presence => true
  validates :StoreIn, :presence => true
end
