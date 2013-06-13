$:.unshift(File.join(File.dirname(__FILE__), 'lib'))

require 'pin/version'

spec = Gem::Specification.new do |s|
  s.name        = 'pin'
  s.version     = Pin::Version::STRING
  s.summary     = 'Ruby bindings for the Pin API'
  s.description = 'Pin is the easiest way to accept payments online.  See https://pin.net.au/ for details.'
  s.authors     = ['Danial Pearce']
  s.email       = ['git@tigris.id.au']
  s.homepage    = 'https://pin.net.au/docs/api'

  s.add_development_dependency('fakeweb')
  s.add_development_dependency('rake')

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- test/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']
end
