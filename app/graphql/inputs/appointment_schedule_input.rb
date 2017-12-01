Inputs::AppointmentScheduleInput = GraphQL::InputObjectType.define do
  name 'AppointmentScheduleInput'
  description 'An appointment schedule'

  input_field :startedAt, !Types::DateTimeType, as: :started_at
end
