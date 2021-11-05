module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World!"
    end

    field :users, [Types::UserType], null: false
    def users
      User.all
    end

    field :posts, [Types::PostType], null: false
    def posts
      Post.all
    end

    # field :post, [Types::PostType], null: false do
    #   argument :id, Int, required: false
    # end
    # def post(id:)
    #   Post.find(id)
    # end
  end
end
