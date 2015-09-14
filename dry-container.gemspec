# coding: utf-8
require File.expand_path('../lib/dry/container/version', __FILE__)

Gem::Specification.new do |spec|
  spec.name          = 'dry-container'
  spec.version       = Dry::Container::VERSION
  spec.authors       = ['Andy Holland']
  spec.email         = ['andyholland1991@aol.com']
  spec.summary       = 'A simple container intended for use as an IoC container'
  spec.homepage      = 'https://github.com/dryrb/dry-container'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'thread_safe'
  spec.add_runtime_dependency 'dry-configurable', '0.1.2'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
end
