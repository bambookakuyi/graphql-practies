# frozen_string_literal: true

module Types::Base
  class Enums::PostStatus < Enum
    description "post状态"

    value "pending", "待审核"
    value "approved", "已通过"
    value "disapproved", "不通过"
  end
end
