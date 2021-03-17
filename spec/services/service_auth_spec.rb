require 'rails_helper'

RSpec.describe ServiceAuth, type: :service do
  before do
    @public_key = "-----BEGIN PUBLIC KEY-----\nMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA4qZBM0Olah6X69PIyT9p\nfGbjrAyJGXOSU9W8qcc9USQpJRxH1yFOIhC8rPyM/499mDJKfSrts+F1qXj/0RCH\nQeOPWz8hcWTpDdJLrcANKykb5FOtVR7m8ov+D8x4AgA3bMJdOQoVNXL35FokA+Kg\n6bWvRWC5O4JfYi1hgU/RPxW9QWIEsOH7/Nz0p8nAu2ENmwUz/h7/xdCBPpPmmsfX\nvBDatZc4SlvIG2JHNKBSo8GIxj8evya7vJM+rdV86sSEuM+WkpMR5aF/36RDTKgJ\n9BYzbssAWtdZalU1gQMZMwCtHWEjoyCeJJ4q4QxrCEY9CnZUEq/jn86t3NDsqDLF\nMQIDAQAB\n-----END PUBLIC KEY-----\n"
    @jwk = {
      kty: "RSA",
      n: "4qZBM0Olah6X69PIyT9pfGbjrAyJGXOSU9W8qcc9USQpJRxH1yFOIhC8rPyM_499mDJKfSrts-F1qXj_0RCHQeOPWz8hcWTpDdJLrcANKykb5FOtVR7m8ov-D8x4AgA3bMJdOQoVNXL35FokA-Kg6bWvRWC5O4JfYi1hgU_RPxW9QWIEsOH7_Nz0p8nAu2ENmwUz_h7_xdCBPpPmmsfXvBDatZc4SlvIG2JHNKBSo8GIxj8evya7vJM-rdV86sSEuM-WkpMR5aF_36RDTKgJ9BYzbssAWtdZalU1gQMZMwCtHWEjoyCeJJ4q4QxrCEY9CnZUEq_jn86t3NDsqDLFMQ",
      e: "AQAB",
      kid: "73ce00964c0cebce13c5c02ab18f77b7b520f2581a4bfd855609c7deb2336154"
    }
    @header = {
      type: "JWT",
      kid: "73ce00964c0cebce13c5c02ab18f77b7b520f2581a4bfd855609c7deb2336154",
      alg: "RS256"
    }
    @payload = {
      sub: 'this is payload sub',
      obj: 'this is payload obj'
    }
    @token = "eyJ0eXBlIjoiSldUIiwia2lkIjoiNzNjZTAwOTY0YzBjZWJjZTEzYzVjMDJhYjE4Zjc3YjdiNTIwZjI1ODFhNGJmZDg1NTYwOWM3ZGViMjMzNjE1NCIsImFsZyI6IlJTMjU2In0.eyJzdWIiOiJ0aGlzIGlzIHBheWxvYWQgc3ViIiwib2JqIjoidGhpcyBpcyBwYXlsb2FkIG9iaiJ9.w5Tv9f3S4ByjgEHmpCc2n2OlUiwIjOcz_9luR-MxmBS7RguTx8SCqFDD0yVPu5TDXdJWbJyDel0aGb5vFwgMp4V5Z5vZWqHj54cOc0ok-7NmvtSR2W8C1E7cIABZ41dqUpS-e6M0VQBUGxPi0IJ1EQ1Bi8USXPB0R9C0pPi3uezbrQv4F3B7FpQfD8ElMncp1PC68yzEXW_RS-di9ktFaIinJ4C1WX5-yc8hUw7DUOzEeIZXqQn9l-BZSh45TdRnP8oznmjRQKUuFejvNE7ISx5kGRcCn9CauPp-b60rjOV_w3XsAnfjlu8e8igl17X5ITzMDKNk9TS9xKdW5FK3Ng"
  end

  context 'when obtain_public_key' do
    it 'can correct calculate public_key' do
      public_key = ServiceAuth::Jwt.obtain_public_key(@jwk)
      expect(public_key.to_s).to eq(@public_key)
    end
  end

  context 'when decode jwt' do
    it 'should be correct' do
      jwt = ServiceAuth::Jwt.decode(@token, ServiceAuth::Jwt.obtain_public_key(@jwk))
      expect(jwt[0].symbolize_keys).to eq(@payload)
      expect(jwt[1].symbolize_keys).to eq(@header)
    end
  end
end
