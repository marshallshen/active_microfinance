module ActiveMicrofinance
  module Kiva
    module V1
      class Client
        include ActiveMicrofinance::Kiva::V1::ServiceUris

        attr_accessor :uri

        def initialize(uri)
          @uri = uri
        end

        def get
          url = URI.parse(source(uri))
          response = Net::HTTP.get_response(url)
          # for now defaults the format to JSON
          # aim to support more formats in the future
          JSON.parse(response.body) if response.code == "200"
        end
      end
    end
  end
end