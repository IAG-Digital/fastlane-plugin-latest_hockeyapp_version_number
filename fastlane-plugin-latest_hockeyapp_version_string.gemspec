# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fastlane/plugin/latest_hockeyapp_version_string/version'

Gem::Specification.new do |spec|
  spec.name          = 'fastlane-plugin-latest_hockeyapp_version_string'
  spec.version       = Fastlane::LatestHockeyappVersionString::VERSION
  spec.author        = %q{Travis Palmer}
  spec.email         = %q{palmer.travis@gmail.com}

  spec.summary       = %q{Easily fetch the most recent HockeyApp version number for your app}
  spec.homepage      = "https://github.com/IAG-Digital/fastlane-plugin-latest_hockeyapp_version_string"
  spec.license       = "MIT"

  spec.files         = Dir["lib/**/*"] + %w(README.md LICENSE)
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'hockeyapp'

  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'fastlane', '>= 1.97.2'
  spec.add_development_dependency 'webmock'
end
