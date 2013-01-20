module ActiveMicrofinance
  module Kiva
    module V1
      class Client
        include ActiveMicrofinance::Kiva::V1::ServiceUris

        attr_accessor :category, :field, :format

        def initialize(options={})
          @category = options[:category]
          @field = options[:field]
          @format = options[:format] || "json"
        end

        def get
          uri = URI.parse(source)
          response = Net::HTTP.get_response(uri)
          response.body if response.code == 200
        end

        private
        def source
          "#{host}/#{@category}/#{@field}.#{@format}"
        end

        def host
          "http://api.kivaws.org/v1/"
        end
      end
    end
  end
end