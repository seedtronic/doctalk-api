Types::QueryType = GraphQL::ObjectType.define do
  name 'Query'
  description 'The root query'

  connection :doctors, Types::DoctorType.connection_type do
    description 'List doctors'
    resolve ->(obj, args, ctx) { Doctor.all }
  end
end
