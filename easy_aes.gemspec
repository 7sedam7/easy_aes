# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'easy_aes/version'

Gem::Specification.new do |spec|
  spec.name          = "easy_aes"
  spec.version       = EasyAes::VERSION
  spec.authors       = ["7sedam7"]
  spec.email         = ["7sedam7@gmail.com"]
  spec.summary       = 'Gem that allows easy aes algorithm usage'
  spec.description   = 'Gem that allows easy aes algorithm usag'
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
