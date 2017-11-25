Inputs::DoctorInput = GraphQL::InputObjectType.define do
  name 'DoctorInput'
  description 'A Doctor'

  input_field :address, !Inputs::AddressInput
end
