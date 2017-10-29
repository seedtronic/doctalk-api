Types::SpecialtyType = GraphQL::ObjectType.define do
  name 'Specialty'
  description 'A Specialty'

  field :id, !types.ID
  field :title, !types.String
end
