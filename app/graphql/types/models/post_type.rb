# frozen_string_literal: true

module Types::Models
  class PostType < Types::Base::Object
    implements Types::Base::Interfaces::ContentInterface

    description "博客推文"
    field :title, String, null: false
    field :rating, Integer, null: true
    field :status, Types::Base::Enums::PostStatus, null: false
    field :comments, [CommentType], "评论", null: true
  end
end
