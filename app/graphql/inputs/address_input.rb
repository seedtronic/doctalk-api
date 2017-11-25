Inputs::AddressInput = GraphQL::InputObjectType.define do
  name 'AddressInput'
  description 'An Address'

  input_field :street, !types.String
  input_field :number, !types.String
  input_field :complement, types.String
  input_field :city, !types.String
  input_field :state, !types.String
  input_field :zipcode, !types.String
end
