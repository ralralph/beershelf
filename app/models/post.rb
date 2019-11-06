class Post < ApplicationRecord
  # validates :content, :photo, presence: true

  belongs_to :user, optional: true
  belongs_to :beer, optional: true
  has_one :record, dependent: :destroy
  has_one :tast, through: :record, source: :tast

  accepts_nested_attributes_for :record
  accepts_nested_attributes_for :tast
end
