class Listing < ApplicationRecord
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :reviews, dependent: :destroy

  validates :title, presence: true
  validates :size, presence: true
  validates :condition, presence: true
  validates :price, presence: true
  validates :img, presence: true
  
end
