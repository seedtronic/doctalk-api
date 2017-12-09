module Resolvers
  class CreateAppointmentResolver
    def call(_obj, args, ctx)
      AppointmentSchedule
        .find(args[:appointment_schedule_id])
        .create_appointment!(user: ctx[:current_user])
    end
  end
end
