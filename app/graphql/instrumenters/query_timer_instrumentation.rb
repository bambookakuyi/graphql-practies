# frozen_string_literal: true

module Instrumenters::QueryTimerInstrumentation
  module_function

  def before_query(query)
    Rails.logger.info("Query begin: #{Time.current}")
  end

  def after_query(query)
    Rails.logger.info("Query end: #{Time.current}")
  end
end
