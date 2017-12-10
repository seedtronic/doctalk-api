Inputs::CoordsInput = GraphQL::InputObjectType.define do
  name 'CoordsInput'
  description 'A pair of coordinates'

  input_field :latitude, !types.Float
  input_field :longitude, !types.Float
end
