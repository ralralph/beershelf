class Beer < ApplicationRecord
  belongs_to :category, optional: true
  has_many :wishlists
  has_many :user_lists, through: :wishlists, source: :user
end
