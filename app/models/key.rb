class Key < ApplicationRecord
  class << self
    # 1. find from redis
    # 2. if 1 failed, find from db
    # 2.1 if 2 success, set it to redis
    #
    # return public_key
    def find_by_id(id)
      record = $redis_pool.with { |conn| conn.get("#{name}/#{id}") }
      record ||= find_by(id: id).try(:public_key)
      $redis_pool.with { |conn| conn.set("#{name}/#{id}", record, ex: 3600 * 24) }
      record
    end

    # 1. set if not exist
    # 1.1 persist to database if 1
    # 2. return if exist
    #
    # return public_key
    def obtain_or_create_by(jwk)
      uuid = jwk[1].symbolize_keys.fetch(:sid)
      public_key = ServiceAuth::Jwt.obtain_public_key(jwk)
      record = $redis_pool.with { |conn| conn.set("#{name}/#{id}", record, nx: true, ex: 3600 * 24) }
      record ||= create_or_find_by(uuid: uuid, public_key: public_key).public_key
      record
    end
  end
end
