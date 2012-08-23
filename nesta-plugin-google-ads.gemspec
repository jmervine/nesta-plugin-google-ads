# -*- encoding: utf-8 -*-
require File.expand_path('../lib/nesta-plugin-google-ads/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Joshua Mervine"]
  gem.email         = ["joshua@mervine.net"]
  gem.description   = %q{Add google ads to nesta!}
  gem.summary       = gem.description
  gem.homepage      = "http://github.com/jmervine/nesta-plugin-google-ads"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "nesta-plugin-google-ads"
  gem.require_paths = ["lib"]
  gem.version       = Nesta::Plugin::Google::Ads::VERSION
  gem.add_dependency("nesta", ">= 0.9.11")
  gem.add_development_dependency("rake")
  gem.add_development_dependency("yard")
end
