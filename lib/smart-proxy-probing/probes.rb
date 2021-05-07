module Proxy::Probing
  module Probes
    require 'smart-proxy-probing/probes/abstract'
    require 'smart-proxy-probing/probes/nmap'
    require 'smart-proxy-probing/probes/tcp'
    require 'smart-proxy-probing/probes/udp'
    require 'smart-proxy-probing/probes/icmp'
  end
end
