class AccessLog < ApplicationRecord
  validates :image, :presence => true
  validates :DateAndCompany, :presence => true
  has_attached_file :image , styles: { medium: "595x842>"}
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
