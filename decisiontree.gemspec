$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name = "decisiontree"
  s.version = "0.5.0"
  s.platform = Gem::Platform::RUBY
  s.authors = ["Ilya Grigorik"]
  s.email = ["ilya@igvita.com"]
  s.homepage = "https://github.com/igrigorik/decisiontree"
  s.summary = "ID3-based implementation of the M.L. Decision Tree algorithm"
  s.description = s.summary
  s.license = "MIT"

  s.rubyforge_project = "decisiontree"

  s.add_development_dependency "graphr"
  s.add_development_dependency "rspec"
  s.add_development_dependency "rspec-given"
  s.add_development_dependency "pry"

  s.files = `git ls-files`.split("\n")
  s.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.require_paths = ["lib"]
end
