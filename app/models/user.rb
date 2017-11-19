class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :interests
 	
  validates :email, uniqueness: true
  validates_presence_of :full_name
  validates_presence_of :age
  validates_numericality_of :age, greater_than: 18
end
