class Educator < ApplicationRecord

  has_one :user, as: :userable, dependent: :destroy

  has_many :cohorts
  has_one :house

  def full_name
    "#{first_name} #{last_name}"
  end
end
