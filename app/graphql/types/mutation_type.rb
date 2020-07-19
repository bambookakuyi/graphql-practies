# frozen_string_literal: true

module Types
  class MutationType < BaseObject
    field :create_post, mutation: Mutations::CreatePost
    field :change_post_title, mutation: Mutations::ChangePostTitle
    field :change_post_rating, mutation: Mutations::ChangePostRating
  end
end
