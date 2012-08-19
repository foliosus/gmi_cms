# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "seo_meta"
  s.version = "1.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Philip Arndt"]
  s.date = "2012-03-26"
  s.description = "SEO Meta tags plugin for Ruby on Rails"
  s.email = "parndt@gmail.com"
  s.homepage = "http://philiparndt.name"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.24"
  s.summary = "SEO Meta tags plugin"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<combustion>, [">= 0"])
      s.add_development_dependency(%q<rspec-rails>, [">= 0"])
      s.add_development_dependency(%q<sqlite3>, [">= 0"])
      s.add_runtime_dependency(%q<railties>, [">= 3.0.0"])
    else
      s.add_dependency(%q<combustion>, [">= 0"])
      s.add_dependency(%q<rspec-rails>, [">= 0"])
      s.add_dependency(%q<sqlite3>, [">= 0"])
      s.add_dependency(%q<railties>, [">= 3.0.0"])
    end
  else
    s.add_dependency(%q<combustion>, [">= 0"])
    s.add_dependency(%q<rspec-rails>, [">= 0"])
    s.add_dependency(%q<sqlite3>, [">= 0"])
    s.add_dependency(%q<railties>, [">= 3.0.0"])
  end
end
