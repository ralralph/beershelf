class Wishlist < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :beer, optional: true
end
