# frozen_string_literal: true

module Types
  class MutationType < GraphQL::Schema::Object
    field :create_post, mutation: Mutations::CreatePost
    field :change_post_title, mutation: Mutations::ChangePostTitle
    field :change_post_rating, mutation: Mutations::ChangePostRating
  end
end
