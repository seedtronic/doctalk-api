module Resolvers
  class AppointmentResolver
    def call(obj, _args, ctx)
      appointment_schedule = obj
      current_user = ctx[:current_user]
      appointment = appointment_schedule.appointment
      appointment if [
        appointment.try(:user),
        appointment_schedule.doctor.user
      ].compact.include?(current_user)
    end
  end
end
