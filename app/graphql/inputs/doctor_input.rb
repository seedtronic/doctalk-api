Inputs::DoctorInput = GraphQL::InputObjectType.define do
  name 'DoctorInput'
  description 'A Doctor'

  input_field :name, !types.String
  input_field :crm, !types.String
  input_field :specialty_id, !types.ID
  input_field :address, !Inputs::AddressInput
end
