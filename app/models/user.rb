class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  #this is new, please don't fuck up
  belongs_to :userable, polymorphic: true
  #end new stuff
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
