class AppointmentSchedule < ApplicationRecord
  belongs_to :doctor
  belongs_to :appointment, optional: true
  validates :started_at, presence: true
end
