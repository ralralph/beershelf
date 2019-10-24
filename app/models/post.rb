class Post < ApplicationRecord
  # validates :content, :photo, presence: true

  belongs_to :user, optional: true
  belongs_to :beer, optional: true
  belongs_to :record, optional: true
end
