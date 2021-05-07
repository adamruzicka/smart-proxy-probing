module Proxy
  module Probing
    class Plugin < Proxy::Plugin

      plugin :probing, Proxy::Probing::VERSION
      settings_file 'probing.yml'
      after_activation do
        require 'smart_proxy_dynflow'
        require 'smart-proxy-probing/version'

        require 'dynflow'
        require 'foreman_tasks_core'

        require 'smart_proxy_dynflow_core'
        require 'foreman_tasks_core/runner'
        require 'smart_proxy_probing/actions'
        require 'smart_proxy_probing/neighbour_cache'
        require 'smart_proxy_probing/probes'
      end
    end
  end
end
