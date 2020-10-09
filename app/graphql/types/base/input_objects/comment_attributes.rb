# frozen_string_literal: true

module Types::Base
  class InputObjects::CommentAttributes < InputObject
    description "创建或更新comment的属性"

    argument :desc, String, required: true
  end
end
