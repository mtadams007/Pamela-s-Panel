class Cohort < ApplicationRecord
  belongs_to :educator
  belongs_to :course
  has_many :grades, dependent: :destroy
  has_many :students, through: :grades
end
