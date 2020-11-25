require 'net/http'
require 'open-uri'
require 'json'
require 'pry'

class GetRequester
    def initialize(url)
        @url = url
    end

    def get_response_body
      uri = URI.parse(@url)
      open(uri).string
    end

    def parse_json
        JSON.load(open(@url))
    end

end    