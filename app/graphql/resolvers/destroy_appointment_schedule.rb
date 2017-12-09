module Resolvers
  class DestroyAppointmentSchedule
    def call(_obj, args, ctx)
      ctx[:current_user]
        .doctor
        .appointment_schedules
        .find(args[:appointmentScheduleId])
        .tap(&:destroy!)
    end
  end
end
