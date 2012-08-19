# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "refinerycms-authentication"
  s.version = "2.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Philip Arndt", "U\u{123}is Ozols", "David Jones", "Steven Heidel"]
  s.date = "2012-04-02"
  s.description = "The default authentication extension for Refinery CMS"
  s.email = "info@refinerycms.com"
  s.homepage = "http://refinerycms.com"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "refinerycms"
  s.rubygems_version = "1.8.24"
  s.summary = "Authentication extension for Refinery CMS"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<refinerycms-core>, ["= 2.0.3"])
      s.add_runtime_dependency(%q<devise>, ["~> 2.0.0"])
      s.add_runtime_dependency(%q<orm_adapter>, ["~> 0.0.7"])
    else
      s.add_dependency(%q<refinerycms-core>, ["= 2.0.3"])
      s.add_dependency(%q<devise>, ["~> 2.0.0"])
      s.add_dependency(%q<orm_adapter>, ["~> 0.0.7"])
    end
  else
    s.add_dependency(%q<refinerycms-core>, ["= 2.0.3"])
    s.add_dependency(%q<devise>, ["~> 2.0.0"])
    s.add_dependency(%q<orm_adapter>, ["~> 0.0.7"])
  end
end
