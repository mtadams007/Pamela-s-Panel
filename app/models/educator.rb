class Educator < ApplicationRecord

  has_one :user, as: :userable, dependent: :destroy

  has_many :cohorts
  has_one :house
end
