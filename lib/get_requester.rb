require 'pry'
require 'net/http'
require 'open-uri'
require 'json'


class GetRequester
    attr_accessor :url
    
    url = ()

    def initialize(url)
        @url = url
    end
    
    def get_response_body
        uri = URI.parse(url)
        response = Net::HTTP.get_response(uri)
        response.body
    end

    def parse_json
        results = JSON.parse(self.get_response_body)
        results.collect do |result|
            result  
        end
    end

end

