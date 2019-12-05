# frozen_string_literal: true

class GraphqlPractiesSchema < GraphQL::Schema
  max_depth 4
  max_complexity 300

  mutation(Types::MutationType)
  query(Types::QueryType)

  # for loads
  # changePostTile中的loads会用到该方法
  def self.object_from_id(id, ctx)
    Post.find(id)
  end
end
