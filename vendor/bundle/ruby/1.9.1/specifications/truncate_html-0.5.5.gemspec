# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "truncate_html"
  s.version = "0.5.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Harold Gim\u{e9}nez"]
  s.date = "2012-04-24"
  s.description = "Truncates html so you don't have to"
  s.email = ["harold.gimenez@gmail.com"]
  s.homepage = "https://github.com/hgimenez/truncate_html"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.24"
  s.summary = "Uses an API similar to Rails' truncate helper to truncate HTML and close any lingering open tags."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec-rails>, ["~> 2.9"])
      s.add_development_dependency(%q<rails>, ["~> 3.0.3"])
    else
      s.add_dependency(%q<rspec-rails>, ["~> 2.9"])
      s.add_dependency(%q<rails>, ["~> 3.0.3"])
    end
  else
    s.add_dependency(%q<rspec-rails>, ["~> 2.9"])
    s.add_dependency(%q<rails>, ["~> 3.0.3"])
  end
end
