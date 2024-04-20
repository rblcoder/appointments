class Patient < ApplicationRecord
  belongs_to :receptionist
  has_many :appointments
  has_many :doctors, through: :appointments
  validates :name, presence: true, uniqueness: {scope: :receptionist_id}
end
