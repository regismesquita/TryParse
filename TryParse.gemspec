# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{TryParse}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["R\303\251gis Mesquita"]
  s.date = %q{2010-08-01}
  s.email = %q{regis@regismesquita.com.br}
  s.files = ["lib/string_hash.rb", "lib/TryParse.rb", "Rakefile", "README", "README.textile"]
  s.homepage = %q{http://regismesquita.com}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{A Gem to parse hash from string, and also a lib to help determine if a string is a Hash object inspect.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
