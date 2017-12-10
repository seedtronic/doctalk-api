module Resolvers
  class DestroyAppointmentResolver
    def call(_obj, args, ctx)
      appointment = Appointment.find(args[:appointment_id])
      current_user = ctx[:current_user]
      raise ActiveRecord::RecordNotFound unless [
        appointment.user,
        appointment.doctor.user
      ].include?(current_user)
      appointment.destroy!
      appointment.appointment_schedule.appointment = nil
      appointment
    end
  end
end
