
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "pry-box/version"

Gem::Specification.new do |spec|
  spec.name          = "pry-box"
  spec.version       = PryBox::VERSION
  spec.authors       = ["Alberto Rocha"]
  spec.email         = ["betogrun@gmail.com"]

  spec.summary       = %q{Meta package for debugger with pry and some useful plugins.}
  spec.description   = %q{This gem enables debugging using the pry console by requiring the pry gem and useful plugins such as pry-inline and awesome_print.}.squeeze
  spec.homepage      = "https://github.com/betogrun/pry-box"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "pry"
  spec.add_dependency "awesome_print"
  spec.add_dependency "pry-inline"

  if RUBY_VERSION < '2.2'
    spec.add_dependency "pry-debugger"
    spec.add_dependency "pry-stack_explorer"
  else
    spec.add_dependency "pry-byebug"
  end

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
