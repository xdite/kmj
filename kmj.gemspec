# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kmj/version'

Gem::Specification.new do |spec|
  spec.name          = "kmj"
  spec.version       = Kmj::VERSION
  spec.authors       = ["xdite"]
  spec.email         = ["xuite.joke@gmail.com"]
  spec.summary       = %q{Kanmeiju Link Parser}
  spec.description   = %q{Kanmeiju Link Parser}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "nokogiri"
end
