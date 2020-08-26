# frozen_string_literal: true

class GraphqlPractiesSchema < GraphQL::Schema
  max_depth 4
  max_complexity 300

  # 根类型
  mutation(Types::MutationType)
  query(Types::QueryType)
  subscription Types::SubscriptionType

  # Define hooks as class methods:
  # This happens for fields that return interface or union types.
  def self.resolve_type(type, obj, ctx)
    # Disambiguate `object`, from among `abstract_type`'s members
    # (`abstract_type` is an interface or union type.)
  end

  # used by Relay’s `node(id: ID!): Node` field.
  # changePostTile中的loads会用到该方法
  def self.object_from_id(id, ctx)
    Post.find(id)
  end

  # used to implement Relay’s Node.id field. It should return a unique ID for the given object. This ID will later be sent to object_from_id to refetch the object.
  def self.id_from_object(object, type, ctx)
    # ...
  end

  instrument(:query, Instrumenters::QueryTimerInstrumentation)

  rescue_from(ActiveRecord::RecordNotFound) { "资源不存在" }
end
