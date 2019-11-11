class Brewery < ApplicationRecord
  mount_uploader :image, ImageUploader

  has_many :beers
end
