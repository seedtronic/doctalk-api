module Resolvers
  class CreateAppointmentSchedule
    def call(_obj, args, ctx)
      ctx[:current_user]
        .doctor
        .appointment_schedules
        .create!(args[:appointment_schedule])
    end
  end
end
