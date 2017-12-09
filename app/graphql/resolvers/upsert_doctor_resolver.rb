module Resolvers
  class UpsertDoctorResolver
    def call(_obj, args, ctx)
      doctor = build_doctor(args, ctx)
      doctor.address.update_coordenates_from_adress
      doctor.save!
      doctor
    end

    private

    def build_doctor(args, ctx)
      current_user = ctx[:current_user]
      data = args[:doctor].to_h
      address = data.delete('address')
      (current_user.doctor || current_user.build_doctor).tap do |doctor|
        doctor.attributes = data.merge(
          photo_url: current_user.photo_url,
          address_attributes: address
        )
      end
    end
  end
end
