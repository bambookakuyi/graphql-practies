# frozen_string_literal: true

class Post < ApplicationRecord
  # concerns

  # constants

  # attr related macros
  enum status: {
    pending: 0,
    approved: 1,
    disapproved: 2
  }

  # association macros
  has_many :comments, dependent: :destroy

  # validation macros

  # callbacks

  # other macros

  # scopes

  # class methods

  # instance methods
end
