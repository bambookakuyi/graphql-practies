# frozen_string_literal: true

module Types
  class BaseObject < GraphQL::Schema::Object
    field :id, ID, null: false
    field :created_at, String, null: false

    def created_at
      object.created_at.to_s
    end
  end
end
