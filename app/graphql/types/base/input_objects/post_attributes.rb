# frozen_string_literal: true

module Types::Base
  class InputObjects::PostAttributes < InputObject
    description "创建或更新Post的属性"

    argument :title, String, "标题", required: true
    argument :rating, Integer, "等级", required: false
    # Tip: 参数类型不支持GraphQL::Schema::Object
    argument :comments, [Types::Base::InputObjects::CommentAttributes], required: false
  end
end
