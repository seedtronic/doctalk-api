Types::UserType = GraphQL::ObjectType.define do
  name 'User'
  description 'An User'

  field :id, !types.ID
  field :name, !types.String
  field :email, !types.String
  field :photoUrl, !types.String, property: :photo_url
end
