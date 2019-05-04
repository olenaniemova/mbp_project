# -*- encoding: utf-8 -*-
# stub: validates_timeliness 5.0.0.alpha4 ruby lib

Gem::Specification.new do |s|
  s.name = "validates_timeliness".freeze
  s.version = "5.0.0.alpha4"

  s.required_rubygems_version = Gem::Requirement.new("> 1.3.1".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Adam Meehan".freeze]
  s.date = "2019-02-09"
  s.description = "Adds validation methods to ActiveModel for validating dates and times. Works with multiple ORMS.".freeze
  s.email = "adam.meehan@gmail.com".freeze
  s.extra_rdoc_files = ["README.rdoc".freeze, "CHANGELOG.rdoc".freeze, "LICENSE".freeze]
  s.files = ["CHANGELOG.rdoc".freeze, "LICENSE".freeze, "README.rdoc".freeze]
  s.homepage = "http://github.com/adzap/validates_timeliness".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.6.11".freeze
  s.summary = "Date and time validation plugin for Rails which allows custom formats".freeze

  s.installed_by_version = "2.6.11" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<timeliness>.freeze, ["< 1", ">= 0.3.10"])
    else
      s.add_dependency(%q<timeliness>.freeze, ["< 1", ">= 0.3.10"])
    end
  else
    s.add_dependency(%q<timeliness>.freeze, ["< 1", ">= 0.3.10"])
  end
end
