module Resolvers
  class AppointmentSchedulesResolver
    def call(obj, args, _ctx)
      scope = obj.appointment_schedules.order(:started_at)
      scope = filter_by_started_at(scope, args)
      scope = filter_by_scheduled(scope, args)
      scope
    end

    private

    def filter_by_started_at(scope, args)
      scope.where('started_at >', Time.current) unless args[:include_archive]
    end

    def filter_by_scheduled(scope, args)
      scope.where(appointment: nil) unless args[:include_scheduled]
    end
  end
end
