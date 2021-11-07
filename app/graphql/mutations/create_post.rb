module Mutations
  class CreatePost < BaseMutation
    field :post, Types::PostType, null: true

    argument :title, String, required: true
    argument :body, String, required: true
    argument :user_id, Int, required: true

    def resolve(**args)
      post = Post.create!(args)
      {
        post: post
      }
    end
  end
end
