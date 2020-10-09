# frozen_string_literal: true

module Types::Base
  class Scalars::Url < Scalar
    description "自定义Types::Base::Scalars::Url标量类型"

    def self.coerce_input(value, context)
      url = URI.parse(value)
      if url.is_a?(URI::HTTP) || url.is_a?(URI::HTTPS)
        url
      else
        raise GraphQL::CoerceError, "#{value.inspect} 不是一个有效的url"
      end
    end

    def self.coerce_result(value, context)
      value.to_s
    end
  end
end
