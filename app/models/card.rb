class Card < ApplicationRecord
  has_attached_file :c_image, styles: {medium: "300 x 300", thumb: "100 x 100"}
  has_many :orders

  validates :title, presence: true
  validates :description, presence: true
  validates :image_url, presence: true
  validates :price, presence: true
  validates_attachment_content_type :c_image, content_type: /\Aimage\/.*\z/

end
