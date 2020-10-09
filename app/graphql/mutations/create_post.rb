# frozen_string_literal: true

module Mutations
  class CreatePost < BaseMutation
    argument :title, String, required: true
    argument :rating, Int, required: false

    # mutation的返回类型
    # type Types::Models::PostType

    field :post, Types::Models::PostType, null: true
    field :errors, [String], null: false

    def resolve(title: nil, rating: nil)
      post = Post.new(title: title, rating: rating)
      # post.save!
      if post.save
        {
          post: post,
          errors: []
        }
      else
        {
          post: nil,
          errors: post.errors.full_messages
        }
      end
    end
  end

  class ChangePostRating < BaseMutation
    argument :post_id, ID, required: true, loads: Types::Models::PostType
    argument :rating, Integer, required: false

    field :post, Types::Models::PostType, null: true

    def resolve(post:, rating:)
      if post.update(rating: rating)
        {
          post: post
        }
      else
        raise GraphQL::ExecutionError, post.errors.full_messages.join("，")
      end
    end
  end
end
