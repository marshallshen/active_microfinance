require "net/http"
require "uri"

module ActiveMicrofinance
  module Kiva
    module V1
      module ServiceUris
        CATEGORY_WHITELIST = [:journal_entries, :lenders, :lending_actions,
                              :loans, :methods, :partners, :release, :teams]
      end
    end
  end
end