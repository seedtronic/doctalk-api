Types::AppointmentScheduleType = GraphQL::ObjectType.define do
  name 'AppointmentSchedule'
  description 'An appointment schedule'

  field :id, !types.ID
  field :startedAt, !Types::DateTimeType, property: :started_at
  field :doctor, !Types::DoctorType
  field :appointment,
        Types::AppointmentType,
        resolve: Resolvers::AppointmentResolver.new
end
