Types::DoctorType = GraphQL::ObjectType.define do
  name 'Doctor'
  description 'A Doctor'

  field :name, !types.String
  field :lat, types.Float
  field :lng, types.Float
  field :address, types.String
end
