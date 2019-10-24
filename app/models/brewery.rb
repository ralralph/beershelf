class Brewery < ApplicationRecord
  belongs_to :beer, optional: true
end
