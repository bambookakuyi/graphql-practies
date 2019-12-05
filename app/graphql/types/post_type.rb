# frozen_string_literal: true

module Types
  class PostType < BaseObject
    description 'A blog post'
    field :title, String, null: true
    field :rating, Integer, null: true
    field :comments, [CommentType], "This post's comments, or null if this post has comments disabled.", null: true
  end
end
