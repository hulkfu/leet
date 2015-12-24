# -*- encoding: utf-8 -*-
$LOAD_PATH.push File.expand_path('../lib', __FILE__)
require 'leet/version'

Gem::Specification.new do |s|
  s.name        = 'leet'
  s.version     = Leet::VERSION
  s.licenses    = ['MIT']
  s.date        = '2015-12-24'
  s.summary     = "Convert string to leet or unleet it."
  s.description = "A ruby gem that convert string to leet or unleet it."
  s.authors     = ["Aston Fu"]
  s.email       = 'im@fuhao.im'
  s.files       = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_paths = ['lib']
  s.executables   = %w(leet)
  s.homepage    = 'https://github.com/astonfu/leet'
end
