$redis_pool = ConnectionPool.new(
  size: ENV.fetch('REDIS_POOL_SIZE', 5),
  timeout: ENV.fetch('REDIS_TIMEOUT', 5)
) do
  Redis.new(
    host: ENV.fetch('REDIS_HOST', 'localhost'),
    port: ENV.fetch('REDIS_PORT', 6379),
    db: ENV.fetch('REDIS_DB', 0)
  )
end
