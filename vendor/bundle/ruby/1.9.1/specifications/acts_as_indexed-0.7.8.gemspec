# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "acts_as_indexed"
  s.version = "0.7.8"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Douglas F Shearer"]
  s.date = "2012-03-14"
  s.description = "Acts As Indexed is a plugin which provides a pain-free way to add fulltext search to your Ruby on Rails app"
  s.email = "dougal.s@gmail.com"
  s.extra_rdoc_files = ["README.rdoc"]
  s.files = ["README.rdoc"]
  s.homepage = "http://github.com/dougal/acts_as_indexed"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.24"
  s.summary = "Acts As Indexed is a plugin which provides a pain-free way to add fulltext search to your Ruby on Rails app"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
