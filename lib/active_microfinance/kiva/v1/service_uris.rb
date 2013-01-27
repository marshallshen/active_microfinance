require "net/http"
require "uri"
require "json"

module ActiveMicrofinance
  module Kiva
    module V1
      module ServiceUris
        def host
          "http://api.kivaws.org/v1"
        end

        def source(uri)
          "#{host}#{uri}#{default_format}"
        end

        def default_format
          ".json"
        end
      end
    end
  end
end