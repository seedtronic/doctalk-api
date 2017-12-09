Types::AppointmentScheduleType = GraphQL::ObjectType.define do
  name 'AppointmentSchedule'
  description 'An appointment schedule'

  field :id, !types.ID
  field :startedAt, !Types::DateTimeType, property: :started_at
  field :appointment, Types::AppointmentType
end
