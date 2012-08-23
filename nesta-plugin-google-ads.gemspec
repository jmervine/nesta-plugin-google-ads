# -*- encoding: utf-8 -*-
require File.expand_path('../lib/nesta-plugin-google-ads/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Joshua Mervine"]
  gem.email         = ["joshua@mervine.net"]
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "nesta-plugin-google-ads"
  gem.require_paths = ["lib"]
  gem.version       = Nesta::Plugin::Google::Ads::VERSION
  s.add_dependency("nesta", ">= 0.9.11")
  s.add_development_dependency("rake")
end