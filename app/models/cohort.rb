class Cohort < ApplicationRecord
  belongs_to :user
  belongs_to :course
  has_many :grades, dependent: :destroy
  has_many :students, through: :grades
end
