Types::AddressType = GraphQL::ObjectType.define do
  name 'Address'
  description 'An Address'

  field :id, !types.ID
  field :stree, !types.String
  field :number, !types.String
  field :complement, types.String
  field :city, !types.String
  field :zipcode, !types.String
  field :lat, !types.Float
  field :lng, !types.Float
end
