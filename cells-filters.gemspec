# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "cells-filters/version"

Gem::Specification.new do |s|
  s.name        = "cells-filters"
  s.version     = Cells::Filters::VERSION
  s.authors     = ["Nick Sutterer"]
  s.email       = ["apotonick@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Before and after filters for your cell.}
  s.description = %q{Before and after filters for your cell.}

  s.rubyforge_project = "cells-filters"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  
  
  s.add_runtime_dependency "cells"
  s.add_runtime_dependency "hooks"
  s.add_development_dependency "minitest",	">= 2.8.1"
end
