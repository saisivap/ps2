class Category < ApplicationRecord
  validates :name, presence: true,uniqueness: true, length: { minimum: 3 } ,:case_sensitive => false

  has_one_attached :image
  # has_one_attached: image

  has_many :items
end
