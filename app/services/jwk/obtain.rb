module Jwk
  class Obtain
    def self.call
      jwk = JSON.parse(fetch.body)
      Key.obtain_or_create_by(jwk)
    end

    def self.fetch
      Typhoeus.get(ENV.fetch('JWK_URL', 'https://api.workstream.us/jwks.json'.freeze))
    end
  end
end
