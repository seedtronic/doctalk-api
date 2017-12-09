Types::DoctorType = GraphQL::ObjectType.define do
  name 'Doctor'
  description 'A Doctor'

  field :id, !types.ID
  field :name, !types.String
  field :photoUrl, types.String, property: :photo_url
  field :crm, !types.String
  field :specialty, Types::SpecialtyType
  field :address, Types::AddressType
  field :user, Types::UserType
end
