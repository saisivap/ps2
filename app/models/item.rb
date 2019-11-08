class Item < ApplicationRecord

  validates :name, presence: true,uniqueness: true, length: { minimum: 3 } ,:case_sensitive => false
  validates :description, presence: true,length: { minimum: 10 } ,:case_sensitive => false
  # validates :image, presence: true
  validates :price, presence: true



  belongs_to :category

  has_one_attached :image
end
