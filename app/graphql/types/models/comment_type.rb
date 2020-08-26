# frozen_string_literal: true

module Types::Models
  class CommentType < Types::Base::Object
    description "评论"
    field :desc, String, null: true
    field :post, PostType, null: false
  end
end
