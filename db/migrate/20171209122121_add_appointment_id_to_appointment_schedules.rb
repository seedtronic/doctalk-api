class AddAppointmentIdToAppointmentSchedules < ActiveRecord::Migration[5.1]
  def change
    add_reference :appointment_schedules, :appointment, foreign_key: true
  end
end
