Types::QueryType = GraphQL::ObjectType.define do
  name 'Query'
  description 'The root query'

  field :doctor, Types::DoctorType do
    argument :id, types.ID
    resolve ->(_obj, args, _ctx) { Doctor.find(args[:id]) }
  end

  connection :doctors, Types::DoctorType.connection_type do
    description 'List doctors'
    resolve ->(_obj, _args, _ctx) { Doctor.all }
  end

  connection :specialties, Types::SpecialtyType.connection_type do
    description 'List specialties'
    resolve ->(_obj, _args, _ctx) { Specialty.all }
  end
end
