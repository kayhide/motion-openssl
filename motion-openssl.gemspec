# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'motion-openssl/version'

Gem::Specification.new do |spec|
  spec.name          = 'motion-openssl'
  spec.version       = Motion::OpenSSL::VERSION
  spec.authors       = ['kayhide']
  spec.email         = ['kayhide@gmail.com']

  spec.summary       = 'OpenSSL library for RubyMotion.'
  spec.description   = 'OpenSSL library for RubyMotion. Compatible to the mri version.'
  spec.homepage      = 'http://github.com/kayhide/motion-openssl'
  spec.license       = 'MIT'

  spec.files         = ['README.md', *Dir['lib/**/*']]
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'
end
