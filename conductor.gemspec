$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "conductor/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "conductor"
  s.version     = Conductor::VERSION
  s.authors     = ["DHH", "josephholsten","asish bhattarai"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Conductor."
  s.description = "TODO: Description of Conductor."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails"
  # s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
end
