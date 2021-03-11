module ServiceAuth
  class Jwt
    class << self
      def obtain_public_key(jwk_data)
        Workstream::Auth::Jwk.public_key(jwk_data)
      rescue
        raise JwkDataError
      end

      def decode(token, public_key)
        JWT.decode(token, public_key, true, { algorithm: 'RS256' }) # true means verify signature (while signature is the 3rd part of jwt)
      rescue
        raise JwtDecodeError
      end
    end
  end
end
