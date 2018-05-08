class Educator < ApplicationRecord
  has_one :profile, as: :profileable, dependent: :destroy
  has_many :cohorts
  has_one :house
end
