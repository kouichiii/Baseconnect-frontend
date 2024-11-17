# config/initializers/solid_queue.rb

SolidQueue.configure do |config|
  config.queue_database = ENV['QUEUE_DATABASE_URL'] || 'queue_production'
end
