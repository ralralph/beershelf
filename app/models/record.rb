class Record < ApplicationRecord
  # validates :feeling, :serving_style, presence: true
  belongs_to :post, optional: true
  has_one :tast

  enum feeling: {good:1, ok:2, bad:3}
  enum serving_style: {draft:1, bottle:2, can:3, taster:4, other:5}
end
