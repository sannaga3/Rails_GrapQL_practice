module Mutations
  class DeletePost < BaseMutation
    field :post, Types::PostType, null: true

    argument :id, ID, required: true

    def resolve(**args)
      post = Post.find(args[:id])
      post.destroy!
      {
        post: post
      }
    end
  end
end
