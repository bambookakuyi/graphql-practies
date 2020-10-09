# frozen_string_literal: true

module Types::Base
  # 跟grape中的entities文件有点类似：可自定义方法
  class Object < GraphQL::Schema::Object
    field :id, ID, null: false
    field :created_at, String, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: true
    field :current_time, GraphQL::Types::ISO8601DateTime, null: false
    field :test_url, Types::Base::Scalars::Url, null: false

    def created_at
      object.created_at.to_s
    end

    def current_time
      Time.current
    end

    def test_url
      URI.parse("http://localhost:3000")
    end
  end
end
