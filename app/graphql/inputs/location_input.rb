Inputs::LocationInput = GraphQL::InputObjectType.define do
  name 'LocationInput'
  description 'A map location'

  input_field :latitude, !types.Float
  input_field :longitude, !types.Float
end
