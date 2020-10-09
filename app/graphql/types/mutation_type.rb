# frozen_string_literal: true

module Types
  class MutationType < GraphQL::Schema::Object
    field :create_post, mutation: Mutations::CreatePost
    field :change_post_title, mutation: Mutations::ChangePostTitle
    field :change_post_rating, mutation: Mutations::ChangePostRating
    field :create_post_with_input_object, Types::Models::PostType, null: false do
      argument :attributes, Types::Base::InputObjects::PostAttributes, required: true
    end

    def create_post_with_input_object(attributes:)
      p "test test"
      p attributes.title
      p attributes[:rating]
      attributes
    end
  end
end
