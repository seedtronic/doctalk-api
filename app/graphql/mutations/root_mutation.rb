Mutations::RootMutation = GraphQL::ObjectType.define do
  name 'RootMutation'

  field :loginWithGoogle, Types::UserType do
    argument :idToken, !types.String, as: :id_token
    argument :photoUrl, types.String, as: :photo_url

    resolve Resolvers::GoogleLoginResolver.new
  end

  field :upsertDoctor, Types::DoctorType do
    argument :doctor, Inputs::DoctorInput

    resolve Resolvers::UpsertDoctorResolver.new
  end

  field :createAppointmentSchedule, Types::AppointmentScheduleType do
    argument :appointmentSchedule, Inputs::AppointmentScheduleInput,
             as: :appointment_schedule

    resolve Resolvers::CreateAppointmentScheduleResolver.new
  end

  field :destroyAppointmentSchedule, Types::AppointmentScheduleType do
    argument :appointmentScheduleId, !types.ID

    resolve Resolvers::DestroyAppointmentSchedule.new
  end

  field :createAppointment, Types::AppointmentType do
    argument :appointmentScheduleId, !types.ID, as: :appointment_schedule_id

    resolve Resolvers::CreateAppointmentResolver.new
  end

  field :destroyAppointment, Types::AppointmentType do
    argument :appointmentId, !types.ID, as: :appointment_id

    resolve Resolvers::DestroyAppointmentResolver.new
  end
end
