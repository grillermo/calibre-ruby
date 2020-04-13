# encoding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'calibre/version'

Gem::Specification.new do |gem|
  gem.name          = 'calibre-ruby'
  gem.version       = Calibre::VERSION
  gem.authors       = ['fauno']
  gem.email         = ['fauno@partidopirata.com.ar']
  gem.description   = %q{This gem provides an ActiveRecord interface to Calibre's book database}
  gem.summary       = %q{This gem provides an ActiveRecord interface to Calibre's book database}
  gem.homepage      = 'https://0xacab.org/partido-interdimensional-pirata/calibre-ruby'
  gem.license       = 'MIT'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  gem.add_dependency('activerecord', '~> 5.2.0')
  gem.add_dependency('sqlite3', '~> 1.3.0')
end
