class Ticket < ApplicationRecord
  has_many  :user
  validates :TicketNo, :presence => true, :length => {:minimum => 6}
  validates :CompantName, :presence => true
  validates :ResponseTime, :presence => true
  validates :Hundler, presence: true
  validates :Status, :presence => true
  validates :CustomerName, :presence => true

  def self.search(search)
    if search
      where(["TicketNo LIKE?","%#{search}%"])
    else
      all
    end
  end

end
