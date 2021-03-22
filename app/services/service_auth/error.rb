module ServiceAuth
  class Error < StandardError; end

  class JwkDataError < StandardError; end

  class RsaKeyError < StandardError; end

  class JwtDecodeError < StandardError; end
end
