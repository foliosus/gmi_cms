# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "refinerycms-resources"
  s.version = "2.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Philip Arndt", "U\u{123}is Ozols", "David Jones", "Steven Heidel"]
  s.date = "2011-10-12"
  s.description = "Handles all file upload and processing functionality in Refinery CMS."
  s.email = "info@refinerycms.com"
  s.homepage = "http://refinerycms.com"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "refinerycms"
  s.rubygems_version = "1.8.24"
  s.summary = "Resources extension for Refinery CMS"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<dragonfly>, ["~> 0.9.8"])
      s.add_runtime_dependency(%q<rack-cache>, [">= 0.5.3"])
      s.add_runtime_dependency(%q<refinerycms-core>, ["= 2.0.3"])
    else
      s.add_dependency(%q<dragonfly>, ["~> 0.9.8"])
      s.add_dependency(%q<rack-cache>, [">= 0.5.3"])
      s.add_dependency(%q<refinerycms-core>, ["= 2.0.3"])
    end
  else
    s.add_dependency(%q<dragonfly>, ["~> 0.9.8"])
    s.add_dependency(%q<rack-cache>, [">= 0.5.3"])
    s.add_dependency(%q<refinerycms-core>, ["= 2.0.3"])
  end
end
