Types::AppointmentType = GraphQL::ObjectType.define do
  name 'Appointment'
  description 'An appointment'

  field :id, !types.ID
  field :appointmentSchedule,
        !Types::AppointmentScheduleType,
        property: :appointment_schedule
  field :user, !Types::UserType
end
