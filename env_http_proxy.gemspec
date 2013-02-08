# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'env_http_proxy/version'

Gem::Specification.new do |gem|
  gem.name          = "env_http_proxy"
  gem.version       = EnvHttpProxy::VERSION
  gem.authors       = ["chiastolite"]
  gem.email         = ["chiastolite.1980@gmail.com"]
  gem.description   = %q{use ENV['http_proxy'] for Net::HTTP}
  gem.summary       = %q{use ENV['http_proxy'] for Net::HTTP}
  gem.homepage      = "https://github.com/chiastolite/env_http_proxy"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
