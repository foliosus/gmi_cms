# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "filters_spam"
  s.version = "0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Philip Arndt", "David Jones"]
  s.date = "2010-09-13"
  s.description = "This is a small Ruby on Rails plugin that can be installed as a gem in your Gemfile that allows models to attach to it to provide spam filtering functionality."
  s.email = "info@resolvedigital.co.nz"
  s.homepage = "http://www.resolvedigital.co.nz"
  s.require_paths = ["lib"]
  s.requirements = ["none"]
  s.rubygems_version = "1.8.24"
  s.summary = "Attach to your model to have this filter out the spam using scoring techniques."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
