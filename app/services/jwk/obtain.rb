module Jwk
  class Obtain
    def self.call
      JSON.parse(fetch.body)
      # JsonWebKey.obtain_or_create_by(jwk)
    end

    def self.fetch
      Typhoeus.get(ENV.fetch('JWK_URL', 'https://api-staging.workstream.is/jwk'.freeze))
    end
  end
end
