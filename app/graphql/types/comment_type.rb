# frozen_string_literal: true

module Types
  class CommentType < BaseObject
    field :desc, String, null: true
    field :post, PostType, null: false
  end
end
