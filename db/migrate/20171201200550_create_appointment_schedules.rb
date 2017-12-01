class CreateAppointmentSchedules < ActiveRecord::Migration[5.1]
  def change
    create_table :appointment_schedules do |t|
      t.references :doctor, null: false, foreign_key: true
      t.datetime :started_at, null: false
      t.timestamps
    end
  end
end
