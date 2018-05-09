class Educator < ApplicationRecord
  #OLd stuff
  # has_one :profile, as: :profileable, dependent: :destroy
# New please don't fuck up
  has_one :user, as: :userable, dependent: :destroy
#end new
  has_many :cohorts
  has_one :house
end
