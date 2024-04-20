class Appointment < ApplicationRecord
  belongs_to :doctor
  belongs_to :patient

  validates :start_time, :end_time, presence: true
  validate :ends_after_it_starts
  
  def ends_after_it_starts
    if !starts_before_it_ends?
      errors.add(:start_time, 'must be before the end time')
    end
  end

  def starts_before_it_ends?
    start_time < end_time
  end

  def doctor_name 
    self.doctor.name
  end

  def patient_name 
    self.patient.name
  end

  def self.by_doctor(doctor)
    where(doctor_id: doctor.id)
  end

  def self.upcoming
    where("start_time > ?", Time.now)
  end

  def self.past 
    where("start_time < ?", Time.now)
  end

  def self.most_recent
    order(start_time: :desc)
  end

  def self.longest_ago
    order(start_time: :asc)
  end

end
