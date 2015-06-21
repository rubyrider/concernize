$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "concernize/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "concernize"
  s.version     = Concernize::VERSION
  s.authors     = ["Irfan Ahmed"]
  s.email       = ["irfandhk@gmail.com"]
  s.homepage    = "http://irfan.net.bd"
  s.summary     = "A generator to generate your resource concerns"
  s.description = "Concerns are very important to keep thing DRY and reusable and decoupling separate stack from your resources. This generator will help generating concern files faster with templates."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_runtime_dependency 'rails', '~> 3'

  # s.add_development_dependency "sqlite3"
end
