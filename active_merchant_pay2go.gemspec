# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'active_merchant_pay2go/version'

Gem::Specification.new do |spec|
  spec.name          = "active_merchant_pay2go"
  spec.version       = ActiveMerchantPay2go::VERSION
  spec.authors       = ["hothero"]
  spec.email         = ["hothero0705@gmail.com"]
  spec.description   = %q{A rails plugin to add active_merchant patch for Taiwan payment}
  spec.summary       = %q{A rails plugin to add active_merchant patch for Taiwan payment}
  spec.homepage      = "https://github.com/hothero/active_merchant_pay2go"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'activemerchant', '~> 1.43.3'
  spec.add_development_dependency('test-unit', '~> 2.5.5')

  spec.add_development_dependency('rake')
  spec.add_development_dependency('mocha', '~> 0.13.0')
  spec.add_development_dependency('rails', '>= 4.2')
  spec.add_development_dependency('thor')
end
