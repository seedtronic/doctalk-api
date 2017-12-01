Types::AppointmentScheduleType = GraphQL::ObjectType.define do
  name 'AppointmentSchedule'
  description 'An appointment schedule'

  field :id, !types.ID
  field :startedAt, !Types::DateTimeType, property: :start_at
end
