module Resolvers
  class DoctorsResolver
    def call(_ob, args, _ctx)
      scope = Doctor.all
      scope = filter_by_specialty(scope, args)
      scope = filter_by_region(scope, args)
      scope
    end

    private

    def filter_by_specialty(scope, args)
      if args[:specialty_id]
        scope.where(specialty_id: args[:specialty_id])
      else
        scope
      end
    end

    def filter_by_region(scope, args)
      if args[:region]
        scope.in_bounds(
          region_to_bounds(args[:region]),
          origin: [args[:region][:latitude], args[:region][:longitude]]
        )
      else
        scope
      end
    end

    def region_to_bounds(region)
      sw = [
        axis_delta(region, :latitude, -1),
        axis_delta(region, :longitude, -1)
      ]
      ne = [
        axis_delta(region, :latitude, +1),
        axis_delta(region, :longitude, +1)
      ]
      [sw, ne]
    end

    def axis_delta(region, axis, sign)
      region[axis] + ((region["#{axis}Delta"] / 2) * sign)
    end
  end
end
