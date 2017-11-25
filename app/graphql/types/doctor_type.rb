Types::DoctorType = GraphQL::ObjectType.define do
  name 'Doctor'
  description 'A Doctor'

  field :id, !types.ID
  field :name, !types.String
  field :imageUrl, types.String, property: :image_url
  field :specialty, Types::SpecialtyType
  field :address, Types::AddressType
end
