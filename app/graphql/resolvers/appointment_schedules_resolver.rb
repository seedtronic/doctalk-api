module Resolvers
  class AppointmentSchedulesResolver
    def call(_obj, _args, ctx)
      ctx[:current_user]
        .doctor
        .appointment_schedules
        .order(:started_at)
    end
  end
end
