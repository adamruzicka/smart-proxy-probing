module Proxy
  module Probing
    class Plugin < Proxy::Plugin

      plugin :probing, Proxy::Probing::VERSION
      settings_file 'probing.yml'
      after_activation do
        require 'smart_proxy_dynflow'
        require 'smart-proxy-probing/version'

        begin
          require 'smart_proxy_dynflow_core'
          require 'foreman-probing-core'
        rescue LoadError; end
      end

    end
  end
end
