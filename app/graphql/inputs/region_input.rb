Inputs::RegionInput = GraphQL::InputObjectType.define do
  name 'RegionInput'
  description 'A map region'

  input_field :latitude, !types.Float
  input_field :longitude, !types.Float
  input_field :latitudeDelta, !types.Float
  input_field :longitudeDelta, !types.Float
end
