class Beer < ApplicationRecord
  mount_uploader :image, ImageUploader

  belongs_to :brewery
  belongs_to :category
  has_many :wishlists, dependent: :destroy
  has_many :user_lists, through: :wishlists, source: :user

  accepts_nested_attributes_for :brewery, :category
end
