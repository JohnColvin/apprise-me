# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "apprise-me/version"

Gem::Specification.new do |s|
  s.name        = "apprise-me"
  s.version     = AppriseMe::VERSION
  s.authors     = ["John Colvin"]
  s.email       = ["colvin.john@gmail.com"]
  s.homepage    = "https://github.com/johncolvin/apprise-rails"
  s.summary     = %q{Replaces confirms with apprise style confirms}
  s.description = %q{Automatically uses apprise for confirms sent as a parameter to link_to}

  s.rubyforge_project = "apprise-me"

  s.add_dependency "apprise-rails"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

end
