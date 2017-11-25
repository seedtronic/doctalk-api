DoctalkApiSchema = GraphQL::Schema.define do
  mutation(Mutations::RootMutation)
  query(Types::QueryType)
end
