# if Gem::Version.new(SidekiqScheduler::VERSION) < Gem::Version.new('4.0')
#   Redis.exists_returns_integer = true
# else
#   raise 'Time to remove Redis.exists_returns_integer: https://github.com/mperham/sidekiq/issues/4591'
# end
#

schedule_file = "config/schedule.yml"

if File.exist?(schedule_file) && Sidekiq.server?
  Sidekiq::Cron::Job.load_from_hash YAML.load_file(schedule_file)
end

redis_conn = proc {
  Redis.new
}

Sidekiq.configure_client do |config|
  config.redis = ConnectionPool.new(size: 5, &redis_conn)
end

Sidekiq.configure_server do |config|
  config.redis = ConnectionPool.new(size: 25, &redis_conn)
end
