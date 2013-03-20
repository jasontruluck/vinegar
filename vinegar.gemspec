# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vinegar/version'

Gem::Specification.new do |gem|
  gem.name          = "vinegar"
  gem.version       = Vinegar::VERSION
  gem.authors       = ["Jason Truluck"]
  gem.email         = ["jason.truluck@gmail.com"]
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = ""

  gem.add_dependency "faraday"
  gem.add_dependency "faraday_middleware"
  gem.add_dependency "hashie"
  gem.add_development_dependency "rspec"
  gem.add_development_dependency "vcr"
  gem.add_development_dependency "mocha"
  gem.add_development_dependency "webmock"
  gem.add_development_dependency "simplecov"
  gem.add_development_dependency "capybara"
  gem.add_development_dependency "yard"
  gem.add_development_dependency "redcarpet"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
