# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "jasmine/headless/version"

Gem::Specification.new do |s|
  s.name        = "jasmine-headless-webkit-firstbanco"
  s.version     = '0.9.0.rc.5'
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["John Bintz", "Sencha Inc.", "Pivotal Labs"]
  s.email       = ["john@coswellproductions.com"]
  s.homepage    = ""
  s.summary     = %q{Run Jasmine specs headlessly in a WebKit browser}
  s.description = %q{Run Jasmine specs headlessly. This is a fork gem that makes firstbanco deploys easier. We don't normally do this, but the original gem is defunct.}

  s.rubyforge_project = "jasmine-headless-webkit"

  s.extensions    = `git ls-files -- ext/**/extconf.rb`.split("\n")
  s.files         = `git ls-files`.split("\n") + Dir['jasmine/lib/*']
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency 'jasmine-core', '1.3.1' # Locking to 1.3.1. 2.0.0 is a breaking change we will have to migrate to.
  s.add_runtime_dependency 'coffee-script'
  s.add_runtime_dependency 'rainbow'
  s.add_runtime_dependency 'multi_json', '>= 1.2.0'
  s.add_runtime_dependency 'sprockets'
  s.add_runtime_dependency 'sprockets-vendor_gems'
end
