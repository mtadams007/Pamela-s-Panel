class Educator < ApplicationRecord
  has_one :profile, as: :profileable, dependent: :destroy
  has_many :cohorts
end
