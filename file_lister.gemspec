$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "file_lister/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "file_lister"
  s.version     = FileLister::VERSION
  s.authors     = ["rubystudent"]
  s.email       = ["cfgcl18@ukr.net"]
  s.homepage    = "TODO"
  s.homepage    = ""
  s.summary     = s.description
  s.description = %q{International}

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", ">= 5.0.0.rc1", "< 5.1"

  s.add_development_dependency "sqlite3"
end
