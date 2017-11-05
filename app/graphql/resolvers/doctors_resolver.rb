module Resolvers
  class DoctorsResolver
    def self.call(_obj, args, _ctx)
      scope = Doctor.all
      if args[:specialty_id]
        scope = scope.where(specialty_id: args[:specialty_id])
      end
      scope
    end
  end
end
