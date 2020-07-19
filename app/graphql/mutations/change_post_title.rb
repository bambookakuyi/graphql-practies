# frozen_string_literal: true

module Mutations
  class ChangePostTitle < BaseMutation
    argument :post_id, ID, required: true, loads: Types::PostType
    argument :title, String, required: false

    field :post, Types::PostType, null: true

    def resolve(post:, title:)
      if post.update(title: title)
        {
          post: post
        }
      else
        raise GraphQL::ExecutionError, post.errors.full_messages.join("，")
      end
    end
  end
end
