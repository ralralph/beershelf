class Category < ApplicationRecord
  has_many :beer_categories
  has_many :beer_names, through: :beer_categories, source: :beer
end
