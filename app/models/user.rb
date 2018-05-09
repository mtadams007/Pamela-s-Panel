class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  #this is new
  belongs_to :userable, polymorphic: true
  #end new stuff
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
