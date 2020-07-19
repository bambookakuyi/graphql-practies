# frozen_string_literal: true

module Types
  class QueryType < BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :test_field, String, null: false,
                               description: "An example field added by the generator"
    def test_field
      "Hello World!"
    end

    field :post, PostType, null: true do
      description "通过id查询post"
      argument :id, ID, required: true
    end

    def post(id:)
      Post.find(id)
    end

    field :posts, [PostType], null: true do
      description "查询所有post"
      argument :ids, [ID], required: false
    end

    def posts(ids:)
      Post.ransack(id_in: ids).result
    end

    field :comment, CommentType, null: true do
      description "通过id查询comment"
      argument :id, ID, required: true
    end

    def comment(id:)
      Comment.find(id)
    end
  end
end
