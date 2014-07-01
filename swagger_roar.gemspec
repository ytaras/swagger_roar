# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'swagger_roar/version'

Gem::Specification.new do |gem|
  gem.name          = "swagger_roar"
  gem.version       = SwaggerRoar::VERSION
  gem.version       = "#{gem.version}-alpha-#{ENV['TRAVIS_BUILD_NUMBER']}" if ENV['TRAVIS']
  gem.authors       = ["Yura Taras"]
  gem.email         = ["yura.taras@gmail.com"]
  gem.description   = %q{DRY in swagger and roar scenario, generate documentation from roar modelss}
  gem.summary       = %q{Generate swagger model from roar specification}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'guard'
  gem.add_development_dependency 'guard-rspec'
  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'grape-entity'
  gem.add_development_dependency 'roar'
end
