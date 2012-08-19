# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "refinerycms"
  s.version = "2.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Philip Arndt", "U\u{123}is Ozols", "David Jones", "Steven Heidel"]
  s.date = "2012-04-02"
  s.description = "A Ruby on Rails CMS that supports Rails 3.2. It's easy to extend and sticks to 'the Rails way' where possible."
  s.email = "info@refinerycms.com"
  s.executables = ["refinerycms"]
  s.files = ["bin/refinerycms"]
  s.homepage = "http://refinerycms.com"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "refinerycms"
  s.rubygems_version = "1.8.24"
  s.summary = "A Ruby on Rails CMS that supports Rails 3.2"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<bundler>, ["~> 1.0"])
      s.add_runtime_dependency(%q<refinerycms-authentication>, ["= 2.0.3"])
      s.add_runtime_dependency(%q<refinerycms-core>, ["= 2.0.3"])
      s.add_runtime_dependency(%q<refinerycms-dashboard>, ["= 2.0.3"])
      s.add_runtime_dependency(%q<refinerycms-images>, ["= 2.0.3"])
      s.add_runtime_dependency(%q<refinerycms-pages>, ["= 2.0.3"])
      s.add_runtime_dependency(%q<refinerycms-resources>, ["= 2.0.3"])
    else
      s.add_dependency(%q<bundler>, ["~> 1.0"])
      s.add_dependency(%q<refinerycms-authentication>, ["= 2.0.3"])
      s.add_dependency(%q<refinerycms-core>, ["= 2.0.3"])
      s.add_dependency(%q<refinerycms-dashboard>, ["= 2.0.3"])
      s.add_dependency(%q<refinerycms-images>, ["= 2.0.3"])
      s.add_dependency(%q<refinerycms-pages>, ["= 2.0.3"])
      s.add_dependency(%q<refinerycms-resources>, ["= 2.0.3"])
    end
  else
    s.add_dependency(%q<bundler>, ["~> 1.0"])
    s.add_dependency(%q<refinerycms-authentication>, ["= 2.0.3"])
    s.add_dependency(%q<refinerycms-core>, ["= 2.0.3"])
    s.add_dependency(%q<refinerycms-dashboard>, ["= 2.0.3"])
    s.add_dependency(%q<refinerycms-images>, ["= 2.0.3"])
    s.add_dependency(%q<refinerycms-pages>, ["= 2.0.3"])
    s.add_dependency(%q<refinerycms-resources>, ["= 2.0.3"])
  end
end
