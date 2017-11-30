Inputs::DoctorInput = GraphQL::InputObjectType.define do
  name 'DoctorInput'
  description 'A Doctor'

  input_field :name, !types.String
  input_field :crm, !types.String
  input_field :specialtyId, !types.ID, as: :specialty_id
  input_field :address, !Inputs::AddressInput
end
