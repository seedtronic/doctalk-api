module Resolvers
  class CreateAppointmentScheduleResolver
    def call(_obj, args, ctx)
      ctx[:current_user]
        .doctor
        .appointment_schedules
        .create!(args[:appointment_schedule].to_h)
    end
  end
end
