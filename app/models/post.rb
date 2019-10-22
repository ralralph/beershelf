class Post < ApplicationRecord
  belongs_to :user
  belongs_to :beer
  belongs_to :record
end
