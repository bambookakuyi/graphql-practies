# frozen_string_literal: true

module Types::Models
  class PostType < Types::Base::Object
    description "博客推文"
    field :title, String, null: false
    field :rating, Integer, null: true
    field :comments, [CommentType], "评论", null: true
  end
end
