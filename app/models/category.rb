class Category < ApplicationRecord
  has_many :beers, dependent: :destroy
end
