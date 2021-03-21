class JsonWebKey
  @@instance = nil
  
  def self.instance
    @@instance ||= self.new
  end

  def jwk
    @jwk ||= Jwk::Obtain.call
  end
end
