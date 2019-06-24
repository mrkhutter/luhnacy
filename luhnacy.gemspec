# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "luhnacy/version"

Gem::Specification.new do |spec|
  spec.name          = "luhnacy"
  spec.version       = Luhnacy::VERSION
  spec.authors       = ["Mark Hutter"]
  spec.email         = ["mrkhutter@gmail.com"]

  spec.summary       = %q{A small gem to validate numeric values against the Luhn algorithm.}
  spec.description   = %q{A small gem to validate numeric values against the Luhn algorithm.}
  spec.homepage      = "https://github.com/mrkhutter/luhnacy"
  spec.license       = "MIT"


  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_development_dependency "pry"
end
