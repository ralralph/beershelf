class Record < ApplicationRecord
  # validates :feeling, :serving_style, presence: true
  has_one :tast

  enum feeling: %i[good ok bad]
  enum serving_style: %i[draft bottle can taster other]
end
