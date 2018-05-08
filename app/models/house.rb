class House < ApplicationRecord
  has_many :students
  has_many :educators
end
