# -*- encoding: utf-8 -*-
# stub: mdbootstrap-rails 0.2.2 ruby lib

Gem::Specification.new do |s|
  s.name = "mdbootstrap-rails".freeze
  s.version = "0.2.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Kai Park".freeze]
  s.bindir = "exe".freeze
  s.date = "2018-09-07"
  s.description = "easy to use for mdbootstrap on rails projects.".freeze
  s.email = ["ggogun@gmail.com".freeze]
  s.homepage = "https://github.com/ggomagundan/mdbootstrap-rails".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.6.11".freeze
  s.summary = "Gem for mdbootstrap".freeze

  s.installed_by_version = "2.6.11" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<railties>.freeze, ["< 6", ">= 3.2"])
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.7"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_development_dependency(%q<activesupport>.freeze, [">= 4.1.5"])
      s.add_development_dependency(%q<sass-rails>.freeze, [">= 5.0"])
      s.add_runtime_dependency(%q<font-awesome-rails>.freeze, ["~> 4.7"])
    else
      s.add_dependency(%q<railties>.freeze, ["< 6", ">= 3.2"])
      s.add_dependency(%q<bundler>.freeze, ["~> 1.7"])
      s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_dependency(%q<activesupport>.freeze, [">= 4.1.5"])
      s.add_dependency(%q<sass-rails>.freeze, [">= 5.0"])
      s.add_dependency(%q<font-awesome-rails>.freeze, ["~> 4.7"])
    end
  else
    s.add_dependency(%q<railties>.freeze, ["< 6", ">= 3.2"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.7"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<activesupport>.freeze, [">= 4.1.5"])
    s.add_dependency(%q<sass-rails>.freeze, [">= 5.0"])
    s.add_dependency(%q<font-awesome-rails>.freeze, ["~> 4.7"])
  end
end
