# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{activequery}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Juan Lopes"]
  s.date = %q{2009-04-19}
  s.description = %q{Criteria Query API for Ruby ActiveRecord.}
  s.email = %q{juanplopes@gmail.com}
  s.files = ["Rakefile", "Manifest", "activequery.gemspec"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/juanplopes/activequery}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Activequery"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{activequery}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Criteria Query API for Ruby ActiveRecord.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
