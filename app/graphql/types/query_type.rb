Types::QueryType = GraphQL::ObjectType.define do
  name 'Query'
  description 'The root query'

  field :doctor, Types::DoctorType do
    argument :id, types.ID
    resolve ->(obj, args, ctx) { Doctor.find(args[:id]) }
  end

  connection :doctors, Types::DoctorType.connection_type do
    description 'List doctors'
    resolve ->(obj, args, ctx) { Doctor.all }
  end

  connection :specialties, Types::SpecialtyType.connection_type do
    description 'List specialties'
    resolve ->(obj, args, ctx) { Specialty.all }
  end
end
