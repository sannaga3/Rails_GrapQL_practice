module Mutations
  class UpdatePost < BaseMutation
    field :post, Types::PostType, null: true

    argument :id, ID, required: true
    argument :title, String, required: true
    argument :body, String, required: true

    def resolve(**args)
      post = Post.find(args[:id])
      post.update!(args)
      {
        post: post
      }
    end
  end
end
