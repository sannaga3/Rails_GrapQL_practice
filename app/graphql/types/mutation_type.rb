module Types
  class MutationType < Types::BaseObject
    field :deleteUser, mutation: Mutations::DeleteUser
    field :deletePost, mutation: Mutations::DeletePost
    field :updatePost, mutation: Mutations::UpdatePost
    field :createPost, mutation: Mutations::CreatePost
    field :updateUser, mutation: Mutations::UpdateUser
    field :createUser, mutation: Mutations::CreateUser
    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World"
    end
  end
end
