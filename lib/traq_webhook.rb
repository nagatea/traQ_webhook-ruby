require "traq_webhook/version"
require "net/http"
require "uri"
require "openssl"

module TraqWebhook
  class Client
    attr_accessor :id, :token

    def initialize
      yield self if block_given?
    end

    def post(message)
      signature = calc_hmacsha1(self.token, message)
      uri = URI.parse('https://q.trap.jp/api/1.0/webhooks/' + self.id)
      req = Net::HTTP::Post.new(uri.path)
      req['Content-Type'] = 'text/plain; charset=utf-8'
      req['X-TRAQ-Signature'] = signature
      req.body = message
      option = {
        use_ssl: uri.scheme = "https" 
       }
      res = Net::HTTP.start(uri.hostname, uri.port, option) do |http|
        http.request(req)
      end
    end

    private

    def calc_hmacsha1(token, body)
      OpenSSL::HMAC.hexdigest(OpenSSL::Digest.new('sha1'), token, body)
    end
  end
end
