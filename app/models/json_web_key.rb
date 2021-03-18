class JsonWebKey
  def jwk
    @jwk ||= Jwk::Obtain.call
  end
end
