class Student < ApplicationRecord
  has_one :profile, as: :profileable, dependent: :destroy
  has_many :grades, dependent: :destroy
  has_many :cohorts, through: :grades
  has_one :house
end
