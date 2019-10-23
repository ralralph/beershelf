class Record < ApplicationRecord
  # validates :feeling, :serving_style, presence: true
  belongs_to :tast

  enum feeling: %i[good ok bad]
  enum serving_style: %i[draft bottle can taster other]
end
