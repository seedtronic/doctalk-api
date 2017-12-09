Types::UserType = GraphQL::ObjectType.define do
  name 'User'
  description 'An User'

  field :id, !types.ID
  field :token, !types.String
  field :name, !types.String
  field :email, !types.String
  field :photoUrl, !types.String, property: :photo_url
  field :doctor, Types::DoctorType
  connection :appointmentSchedules,
             !Types::AppointmentScheduleType.connection_type,
             property: :appointment_schedules do
               argument :includeArchive,
                        types.Boolean,
                        default_value: false,
                        as: :include_archive
               resolve Resolvers::AppointmentSchedulesResolver.new
             end
end
