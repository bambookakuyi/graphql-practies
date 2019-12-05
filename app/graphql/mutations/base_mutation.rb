# frozen_string_literal: true

module Mutations
  # This class is used as a parent for all mutations
  class BaseMutation < GraphQL::Schema::Mutation
    null false
  end
end
