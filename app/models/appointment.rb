class Appointment < ApplicationRecord
  belongs_to :user
  has_one :appointment_schedule, dependent: :nullify
  has_one :doctor, through: :appointment_schedule
end
