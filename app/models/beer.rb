class Beer < ApplicationRecord
  belongs_to :category, optional: true
end
