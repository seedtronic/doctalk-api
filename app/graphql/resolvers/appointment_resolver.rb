module Resolvers
  class AppointmentResolver
    def call(obj, _args, ctx)
      appointment_schedule = obj
      current_user = ctx[:current_user]
      appointment = appointment_schedule.appointment
      appointment if [
        appointment.user,
        appointment_schedule.doctor.user
      ].include?(current_user)
    end
  end
end
