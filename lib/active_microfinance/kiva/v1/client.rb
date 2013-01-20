module ActiveMicrofinance
  module Kiva
    module V1
      class client
        include ActiveMicrofinance::Kiva::V1::ServiceUris

        attr_accessor :category, :field, :format

        def initialize(options={})
          @category = options[:categroy]
          @field = options[:field]
          @format = options[:format] || "json"
        end

        def get
          uri = URI::Parse(source)
          response = Net::HTTP.get_response(uri)
          response.body if response.code == 200
        end

        private
        def source
          "#{host}/#{@category}/#{@field}.#{@format}"
        end
      end
    end
  end
end