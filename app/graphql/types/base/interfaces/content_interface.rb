# frozen_string_literal: true

module Types::Base
  module Interfaces::ContentInterface
    include Interface

    description "Content interface"

    field :content, String, null: true

    def content
      "default content"
    end
  end
end
