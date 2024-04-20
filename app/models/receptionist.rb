class Receptionist < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :patients 
  has_many :doctors, through: :patients 
  has_many :appointments, through: :patients
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
