# frozen_string_literal: true

module Types::Base
  class Unions::TestUnion < Union
    description "union type"
    possible_types Types::Models::PostType, Types::Models::CommentType

    def self.resolve_type(object, context)
      if object.is_a?(Post)
        Types::Models::PostType
      else
        Types::Models::CommentType
      end
    end
  end
end
