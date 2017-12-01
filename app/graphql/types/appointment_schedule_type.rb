Types::AppointmentScheduleType = GraphQL::ObjectType.define do
  name 'AppointmentSchedule'
  description 'An appointment schedule'

  field :id, !types.ID
  field :startedAt, !types.DateTime, property: :start_at
end
