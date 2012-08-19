# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "refinerycms-blog"
  s.version = "2.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Resolve Digital", "Neoteric Design"]
  s.date = "2012-04-06"
  s.description = "A really straightforward open source Ruby on Rails blog engine designed for integration with Refinery CMS."
  s.email = "info@refinerycms.com"
  s.homepage = "http://refinerycms.com/blog"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.24"
  s.summary = "Ruby on Rails blogging engine for Refinery CMS."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<refinerycms-core>, ["~> 2.0.3"])
      s.add_runtime_dependency(%q<refinerycms-settings>, ["~> 2.0.1"])
      s.add_runtime_dependency(%q<filters_spam>, ["~> 0.2"])
      s.add_runtime_dependency(%q<acts-as-taggable-on>, [">= 0"])
      s.add_runtime_dependency(%q<seo_meta>, ["~> 1.3.0"])
      s.add_runtime_dependency(%q<rails_autolink>, [">= 0"])
      s.add_development_dependency(%q<refinerycms-testing>, ["~> 2.0.0"])
    else
      s.add_dependency(%q<refinerycms-core>, ["~> 2.0.3"])
      s.add_dependency(%q<refinerycms-settings>, ["~> 2.0.1"])
      s.add_dependency(%q<filters_spam>, ["~> 0.2"])
      s.add_dependency(%q<acts-as-taggable-on>, [">= 0"])
      s.add_dependency(%q<seo_meta>, ["~> 1.3.0"])
      s.add_dependency(%q<rails_autolink>, [">= 0"])
      s.add_dependency(%q<refinerycms-testing>, ["~> 2.0.0"])
    end
  else
    s.add_dependency(%q<refinerycms-core>, ["~> 2.0.3"])
    s.add_dependency(%q<refinerycms-settings>, ["~> 2.0.1"])
    s.add_dependency(%q<filters_spam>, ["~> 0.2"])
    s.add_dependency(%q<acts-as-taggable-on>, [">= 0"])
    s.add_dependency(%q<seo_meta>, ["~> 1.3.0"])
    s.add_dependency(%q<rails_autolink>, [">= 0"])
    s.add_dependency(%q<refinerycms-testing>, ["~> 2.0.0"])
  end
end
