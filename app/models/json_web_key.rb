class JsonWebKey
  @instance = nil

  def self.instance
    @instance ||= new
  end

  def jwk
    @jwk ||= Jwk::Obtain.call
  end

  def public_key
    ServiceAuth::Jwt.obtain_public_key(jwk)
  end
end
