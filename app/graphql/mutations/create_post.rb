module Mutations
  class CreatePost < BaseMutation
    field :post, Types::PostType, null: true

    argument :title, String, required: true
    argument :body, String, required: true

    def resolve(**args)
      post = Post.create!(args)
      {
        post: post
      }
    end
  end
end
