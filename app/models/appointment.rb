class Appointment < ApplicationRecord
  belongs_to :user
  has_one :appointment_schedule
  has_one :doctor, thought: :appointment_schedule
end
