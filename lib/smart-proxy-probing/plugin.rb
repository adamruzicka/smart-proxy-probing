module Proxy
  module Probing
    class Plugin < Proxy::Plugin

      plugin :probing, Proxy::Probing::VERSION
      settings_file 'probing.yml'
      after_activation do
        require 'smart_proxy_dynflow'
        require 'smart-proxy-probing/version'

        require 'dynflow'

        require 'smart_proxy_dynflow/runner'
        require 'smart-proxy-probing/actions'
        require 'smart-proxy-probing/neighbour_cache'
        require 'smart-proxy-probing/probes'
      end
    end
  end
end
