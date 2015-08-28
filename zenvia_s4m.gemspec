# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'zenvia_s4m/version'

Gem::Specification.new do |spec|
  spec.name          = "zenvia_s4m"
  spec.version       = ZenviaS4m::VERSION
  spec.authors       = ["Eduardo Alencar"]
  spec.email         = ["lebas66@gmail.com"]

  spec.summary       = %q{Integração com o serviço de envio de SMS da Zenvia.}
  spec.description   = %q{Integração com o serviço de envio de SMS da Zenvia.}
  spec.homepage      = "http://solution4mac.com.br"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_dependency "rest-client"
end
