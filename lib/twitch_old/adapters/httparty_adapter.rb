require 'httparty'

module TwitchOld
  module Adapters
    class HTTPartyAdapter < BaseAdapter

      def self.request(method, url, options = {})
        res = HTTParty.send(method, url, options)
        {:body => res, :response => res.code}
      end

    end
  end
end
