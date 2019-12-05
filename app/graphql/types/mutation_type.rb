# frozen_string_literal: true

class Types::MutationType < Types::BaseObject
  # # TODO: remove me
  # field :test_field, String, null: false,
  #                            description: 'An example field added by the generator'
  # def test_field
  #   'Hello World'
  # end
  field :create_post, mutation: Mutations::CreatePost
  field :change_post_title, mutation: Mutations::ChangePostTitle
  field :change_post_rating, mutation: Mutations::ChangePostRating
end
