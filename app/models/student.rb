class Student < ApplicationRecord
  # old stuff
  # has_one :profile, as: :profileable, dependent: :destroy
  # 

  # New please don't fuck up
    has_one :user, as: :userable, dependent: :destroy
  #end new
  has_many :grades, dependent: :destroy
  has_many :cohorts, through: :grades
  has_one :house
end
