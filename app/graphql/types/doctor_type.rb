Types::DoctorType = GraphQL::ObjectType.define do
  name 'Doctor'
  description 'A Doctor'

  field :id, !types.ID
  field :name, !types.String
  field :photoUrl, types.String, property: :photo_url
  field :crm, !types.String
  field :specialty, Types::SpecialtyType
  field :address, Types::AddressType
  field :user, Types::UserType

  connection :appointmentSchedules,
             Types::AppointmentScheduleType.connection_type do
               argument :include_archive, types.Boolean, default_value: false
               argument :include_scheduled, types.Boolean, default_value: false
               resolve Resolvers::AppointmentSchedulesResolver.new
             end
end
