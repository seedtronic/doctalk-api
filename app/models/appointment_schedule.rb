class AppointmentSchedule < ApplicationRecord
  belongs_to :doctor
  validates :started_at, presence: true
end
