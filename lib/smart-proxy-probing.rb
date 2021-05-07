require 'smart_proxy_dynflow'

module Proxy
  module Probing
    require 'smart-proxy-probing/version'
    require 'smart-proxy-probing/plugin'

    class << self
      def use_nmap?
        # TODO:
        # Settings.nmap_enabled &&
        nmap_available?
      end

      def nmap_available?
        return @nmap_available unless @nmap_available.nil?
        `nmap`
        @nmap_available = true
      rescue Errno::ENOENT
        @nmap_available = false
      end
    end
  end
end
