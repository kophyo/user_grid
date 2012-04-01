# -*- encoding: utf-8 -*-
require File.expand_path('../lib/usergrid/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Phyo"]
  gem.email         = ["kophyo48@gmail.com"]
  gem.description   = %q{Gem for apigee UserGrid}
  gem.summary       = %q{Created during April fool's hackathon}
  gem.homepage      = ""

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "usergrid"
  gem.require_paths = ["lib"]
  gem.version       = Usergrid::VERSION
end
