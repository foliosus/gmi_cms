# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "refinerycms-inquiries"
  s.version = "2.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Philip Arndt", "U\u{123}is Ozols", "David Jones"]
  s.date = "2012-04-16"
  s.description = "Inquiry handling functionality extracted from Refinery CMS to allow you to have a contact form and manage inquiries in the Refinery backend."
  s.email = "info@refinerycms.com"
  s.homepage = "http://refinerycms.com"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.24"
  s.summary = "Inquiry handling functionality for the Refinery CMS project."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<refinerycms-core>, ["~> 2.0.1"])
      s.add_runtime_dependency(%q<refinerycms-settings>, ["~> 2.0.1"])
      s.add_runtime_dependency(%q<filters_spam>, ["~> 0.2"])
    else
      s.add_dependency(%q<refinerycms-core>, ["~> 2.0.1"])
      s.add_dependency(%q<refinerycms-settings>, ["~> 2.0.1"])
      s.add_dependency(%q<filters_spam>, ["~> 0.2"])
    end
  else
    s.add_dependency(%q<refinerycms-core>, ["~> 2.0.1"])
    s.add_dependency(%q<refinerycms-settings>, ["~> 2.0.1"])
    s.add_dependency(%q<filters_spam>, ["~> 0.2"])
  end
end
