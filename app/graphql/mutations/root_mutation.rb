Mutations::RootMutation = GraphQL::ObjectType.define do
  name 'RootMutation'

  field :loginWithGoogle, Types::UserType do
    argument :idToken, !types.String, as: :id_token
    argument :photoUrl, types.String, as: :photo_url

    resolve Resolvers::GoogleLoginResolver.new
  end
end
