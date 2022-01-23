$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rails_admin_history_rollback/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rails_admin_history_rollback"
  s.version     = RailsAdminHistoryRollback::VERSION
  s.authors     = ["Rikki Pitt"]
  s.email       = ["rikkipitt@gmail.com"]
  s.homepage    = "https://github.com/rikkipitt/rails_admin_history_rollback"
  s.summary     = "History rollback with paper_trail for rails_admin"
  s.description = "Enables users to rollback to any history version recorded by paper_trail. Versions are graphically diff'ed to help with rolling back."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", ">= 4.2.0"
  s.add_dependency "rails_admin", ">= 0.6.6"
  s.add_dependency "paper_trail", ">= 3.0.6"
  s.add_dependency "haml"
end
