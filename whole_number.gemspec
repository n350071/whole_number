
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "whole_number/version"

Gem::Specification.new do |spec|
  spec.name          = "whole_number"
  spec.version       = WholeNumber::VERSION
  spec.authors       = ["nao0515ki"]
  spec.email         = ["ishigaki0515naoki@gmail.com"]

  spec.summary       = %q{whole_number adds a method to Integer and Float.}
  spec.description   = %q{Float and Integer will be converted to whole number, that is 0,1,2,3,4... , when you give a negative num, it will be 0. Also when you give 1.1 => 1 by Float#to_i }
  spec.homepage      = "https://github.com/nao0515ki/whole_number"
  spec.license       = "MIT"


  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
