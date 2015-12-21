$LOAD_PATH.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'pimup/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'pimup'
  s.version     = Pimup::VERSION
  s.authors     = ['Vicente Pons']
  s.email       = ['simpons@gmail.com']
  s.homepage    = 'http://pimup.com'
  s.summary     = 'UI elements for modern web applications.'
  s.license     = 'MIT'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.require_paths = ['lib']

  s.add_runtime_dependency('sass', '~> 3.4')

  s.add_development_dependency 'bundler', '~> 1.10'
  s.add_development_dependency 'rake', '~> 10.0'
end
