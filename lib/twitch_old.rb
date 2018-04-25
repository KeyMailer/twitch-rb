require 'twitch_old/adapters'
require 'twitch_old/client'
require 'twitch_old/request'
require 'twitch_old/version'

module TwitchOld
  def self.new(options={})
    TwitchOld::Client.new(options)
  end
end
