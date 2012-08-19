# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "refinerycms-core"
  s.version = "2.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Philip Arndt", "U\u{123}is Ozols", "David Jones", "Steven Heidel"]
  s.date = "2012-04-02"
  s.description = "The core of Refinery CMS. This handles the common functionality and is required by most extensions"
  s.email = "info@refinerycms.com"
  s.homepage = "http://refinerycms.com"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "refinerycms"
  s.rubygems_version = "1.8.24"
  s.summary = "Core extension for Refinery CMS"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<acts_as_indexed>, ["~> 0.7.7"])
      s.add_runtime_dependency(%q<friendly_id>, ["~> 4.0.1"])
      s.add_runtime_dependency(%q<globalize3>, ["~> 0.2.0"])
      s.add_runtime_dependency(%q<awesome_nested_set>, ["~> 2.1.0"])
      s.add_runtime_dependency(%q<rails>, ["< 3.3", ">= 3.1.3"])
      s.add_runtime_dependency(%q<truncate_html>, ["~> 0.5"])
      s.add_runtime_dependency(%q<will_paginate>, ["~> 3.0.2"])
      s.add_runtime_dependency(%q<sass-rails>, ["~> 3.2.3"])
      s.add_runtime_dependency(%q<coffee-rails>, ["~> 3.2.1"])
      s.add_runtime_dependency(%q<uglifier>, [">= 1.0.3"])
      s.add_runtime_dependency(%q<jquery-rails>, ["~> 2.0.0"])
    else
      s.add_dependency(%q<acts_as_indexed>, ["~> 0.7.7"])
      s.add_dependency(%q<friendly_id>, ["~> 4.0.1"])
      s.add_dependency(%q<globalize3>, ["~> 0.2.0"])
      s.add_dependency(%q<awesome_nested_set>, ["~> 2.1.0"])
      s.add_dependency(%q<rails>, ["< 3.3", ">= 3.1.3"])
      s.add_dependency(%q<truncate_html>, ["~> 0.5"])
      s.add_dependency(%q<will_paginate>, ["~> 3.0.2"])
      s.add_dependency(%q<sass-rails>, ["~> 3.2.3"])
      s.add_dependency(%q<coffee-rails>, ["~> 3.2.1"])
      s.add_dependency(%q<uglifier>, [">= 1.0.3"])
      s.add_dependency(%q<jquery-rails>, ["~> 2.0.0"])
    end
  else
    s.add_dependency(%q<acts_as_indexed>, ["~> 0.7.7"])
    s.add_dependency(%q<friendly_id>, ["~> 4.0.1"])
    s.add_dependency(%q<globalize3>, ["~> 0.2.0"])
    s.add_dependency(%q<awesome_nested_set>, ["~> 2.1.0"])
    s.add_dependency(%q<rails>, ["< 3.3", ">= 3.1.3"])
    s.add_dependency(%q<truncate_html>, ["~> 0.5"])
    s.add_dependency(%q<will_paginate>, ["~> 3.0.2"])
    s.add_dependency(%q<sass-rails>, ["~> 3.2.3"])
    s.add_dependency(%q<coffee-rails>, ["~> 3.2.1"])
    s.add_dependency(%q<uglifier>, [">= 1.0.3"])
    s.add_dependency(%q<jquery-rails>, ["~> 2.0.0"])
  end
end
