class Appointment < ApplicationRecord
  belongs_to :user
  has_one :appointment_schedule
end
