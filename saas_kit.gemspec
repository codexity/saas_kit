$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "saas_kit/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "saas_kit"
  s.version     = SaasKit::VERSION
  s.authors     = ["Mehmet Beydogan"]
  s.email       = ["mehmet.beydogan@gmail.com"]
  s.homepage    = ""
  s.summary     = "Summary of SaasKit."
  s.description = "Description of SaasKit."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4.2"

  s.add_development_dependency "sqlite3"
end
