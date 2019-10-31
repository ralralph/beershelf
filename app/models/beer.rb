class Beer < ApplicationRecord
  belongs_to :brewery, optional: true
  belongs_to :category, optional: true
  has_many :wishlists, dependent: :destroy
  has_many :user_lists, through: :wishlists, source: :user

  accepts_nested_attributes_for :brewery
  accepts_nested_attributes_for :category
end
