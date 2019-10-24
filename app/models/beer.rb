class Beer < ApplicationRecord
  belongs_to :category, optional: true
  has_many :wishlists
  has_many :whish_users, through: :wishlists, source: :user
end
