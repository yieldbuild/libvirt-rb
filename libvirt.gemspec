# -*- encoding: utf-8 -*-
require File.expand_path("../lib/libvirt/version", __FILE__)

Gem::Specification.new do |s|
  s.name        = "libvirt"
  s.version     = Libvirt::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Mitchell Hashimoto"]
  s.email       = ["mitchell.hashimoto@gmail.com"]
  s.homepage    = "http://rubygems.org/gems/libvirt"
  s.summary     = "A ruby client library providing an interface to libvirt via FFI."
  s.description = "A ruby client library providing an interface to libvirt via FFI."

  s.rubyforge_project = "libvirt"

  s.add_dependency "ffi", "~> 1.2.0"
  s.add_dependency "nokogiri", "~> 1.5.5"

  s.add_development_dependency "protest", "~> 0.4.2"
  s.add_development_dependency "mocha", "~> 0.13.0"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
