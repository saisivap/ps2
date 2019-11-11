class Post < ApplicationRecord
# class Post < ActiveRecord::Base
  acts_as_votable
  validates :description, presence: true,length: { minimum: 10 } ,:case_sensitive => false
  validates :image,presence: true

  # acts_as_votable
  belongs_to :user
  has_one_attached :image

end
