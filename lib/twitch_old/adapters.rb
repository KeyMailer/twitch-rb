require 'twitch_old/adapters/base_adapter'
require 'twitch_old/adapters/httparty_adapter'

module TwitchOld
  module Adapters
    DEFAULT_ADAPTER = TwitchOld::Adapters::HTTPartyAdapter

    def get_adapter(adapter, default_adapter = DEFAULT_ADAPTER)
      begin
        TwitchOld::Adapters.const_defined?(adapter.to_s)
      rescue
        default_adapter
      else
        adapter
      end
    end
  end
end
