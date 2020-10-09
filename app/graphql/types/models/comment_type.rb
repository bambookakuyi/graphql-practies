# frozen_string_literal: true

module Types::Models
  class CommentType < Types::Base::Object
    implements Types::Base::Interfaces::ContentInterface

    description "评论"
    field :desc, String, null: true
    field :post, PostType, null: false
    field :post_union, Types::Base::Unions::TestUnion, null: false
    field :comment_union, Types::Base::Unions::TestUnion, null: false

    def content
      "评论 content"
    end

    def post_union
      Post.first
    end

    def comment_union
      Comment.first
    end
  end
end
