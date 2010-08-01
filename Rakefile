require 'rubygems'
require 'rubygems/specification'
require 'rake'
require 'rake/gempackagetask'
require 'spec/rake/spectask'
 
GEM = "TryParse"
GEM_VERSION = "0.0.4"
SUMMARY = "A Gem to parse hash from string, and also a lib to help determine if a string is a Hash object inspect."
AUTHOR = "Régis Mesquita"
EMAIL = "regis@regismesquita.com.br"
HOMEPAGE = "http://regismesquita.com"

 
spec = Gem::Specification.new do |s|
  s.name = GEM
  s.version = GEM_VERSION
  s.platform = Gem::Platform::RUBY
  s.summary = SUMMARY
  s.require_paths = ['lib']
  s.files = FileList['app_generators/**/*', 'bin/*', 'lib/**/*.rb', '[A-Z]*'].to_a
  s.add_dependency('treetop')
  s.author = AUTHOR
  s.email = EMAIL
  s.homepage = HOMEPAGE
end

Spec::Rake::SpecTask.new do |t|
  t.spec_files = FileList['spec/**/*_spec.rb']
  t.spec_opts = %w(-fs --color)
end
  
Rake::GemPackageTask.new(spec) do |pkg|
  pkg.gem_spec = spec
end
 
desc "Install the gem locally"
task :install => [:package] do
  sh %{sudo gem install pkg/#{GEM}-#{GEM_VERSION}}
end
 
desc "Create a gemspec file"
task :make_spec do
  File.open("#{GEM}.gemspec", "w") do |file|
    file.puts spec.to_ruby
  end
end
