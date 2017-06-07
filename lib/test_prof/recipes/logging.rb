RSpec.shared_context "logging:verbose", log: true do
  around(:each) do |ex|
    *loggers = ActiveSupport::LogSubscriber.logger,
              Rails.logger,
              ActiveRecord::Base.logger
    ActiveSupport::LogSubscriber.logger =
    Rails.logger =
    ActiveRecord::Base.logger = Logger.new(STDOUT)
    ex.run
    ActiveSupport::LogSubscriber.logger,
    Rails.logger,
    ActiveRecord::Base.logger = *loggers
  end
end

# shared_context "logging:query_trace", query_trace: true do
#   around(:each) do |ex|
#     require 'active_record_query_trace' unless defined?(ActiveRecordQueryTrace)
#     ActiveRecordQueryTrace.enabled = true
#     ActiveRecordQueryTrace.level = :rails
#     ex.run
#     ActiveRecordQueryTrace.enabled = false
#   end
# end