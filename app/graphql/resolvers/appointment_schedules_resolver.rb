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
      if args[:include_archive]
        scope
      else
        scope.where('started_at > ?', Time.current)
      end
    end

    def filter_by_scheduled(scope, args)
      if args[:include_scheduled]
        scope
      else
        scope.where(appointment: nil)
      end
    end
  end
end
