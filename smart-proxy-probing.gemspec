lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'smart-proxy-probing/version'

Gem::Specification.new do |gem|
  gem.name          = "smart-proxy-probing"
  gem.version       = Proxy::Probing::VERSION
  gem.authors       = ['Adam Ruzicka']
  gem.email         = ['aruzicka@redhat.com']
  gem.homepage      = "https://github.com/adamruzicka/smart-proxy-probing"
  gem.summary       = 'Gem to allow probing through smart-proxy'
  gem.description   = <<-EOS
    Gem to allow probing through smart-proxy
  EOS

  gem.files            = Dir['lib/smart-proxy-probing.rb', 'LICENSE',
                             '{lib/smart-proxy-probing,settings.d}/**/*',
                             'bundler.plugins.d/probing.rb']
  gem.extra_rdoc_files = ['LICENSE']
  gem.test_files       = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths    = ["lib"]
  gem.license = 'GPLv3'

  gem.add_dependency('ruby-nmap', '~> 0.9')
  gem.add_runtime_dependency('smart_proxy_dynflow', '~> 0.5')
end
