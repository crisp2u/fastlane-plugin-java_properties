# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fastlane/plugin/java_properties/version'

Gem::Specification.new do |spec|
  spec.name          = 'fastlane-plugin-java_properties'
  spec.version       = Fastlane::JavaProperties::VERSION
  spec.author        = %q{Cristian Pop}
  spec.email         = %q{cristian.pop@red-to-blue.com}

  spec.summary       = %q{Read/Write Java Property files}
  spec.homepage      = "https://github.com/crisp2u/fastlane-plugin-java_properties"
  spec.license       = "MIT"

  spec.files         = Dir["lib/**/*"] + %w(README.md LICENSE)
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  # Don't add a dependency to fastlane or fastlane_re
  # since this would cause a circular dependency

  # spec.add_dependency 'your-dependency', '~> 1.0.0'

  spec.add_dependency 'java-properties', '~> 0.2.0'

  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'fastlane', '>= 2.39.2'
end
