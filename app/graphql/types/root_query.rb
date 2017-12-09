Types::RootQuery = GraphQL::ObjectType.define do
  name 'Query'
  description 'The root query'

  field :currentUser, Types::UserType do
    description 'The current user'

    resolve ->(_obj, _args, ctx) { ctx[:current_user] }
  end

  field :doctor, Types::DoctorType do
    description 'Get doctor'
    argument :id, !types.ID
    resolve ->(_obj, args, _ctx) { Doctor.find(args[:id]) }
  end

  connection :doctors, Types::DoctorType.connection_type do
    description 'List doctors'
    argument :specialtyId, types.ID, as: :specialty_id
    argument :region, Inputs::RegionInput
    resolve Resolvers::DoctorsResolver.new
  end

  connection :specialties, Types::SpecialtyType.connection_type do
    description 'List specialties'
    resolve ->(_obj, _args, _ctx) { Specialty.all.order(:title) }
  end
end
