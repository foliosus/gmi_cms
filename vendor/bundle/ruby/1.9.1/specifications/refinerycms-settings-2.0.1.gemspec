# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "refinerycms-settings"
  s.version = "2.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Philip Arndt", "U\u{c4}\u{a3}is Ozols"]
  s.date = "2012-03-05"
  s.description = "Adds programmer creatable, user editable settings."
  s.email = "info@refinerycms.com"
  s.homepage = "http://refinerycms.com"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "refinerycms"
  s.rubygems_version = "1.8.24"
  s.summary = "Settings engine for Refinery CMS"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<refinerycms-core>, ["~> 2.0.1"])
    else
      s.add_dependency(%q<refinerycms-core>, ["~> 2.0.1"])
    end
  else
    s.add_dependency(%q<refinerycms-core>, ["~> 2.0.1"])
  end
end
