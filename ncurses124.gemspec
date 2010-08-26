require "rubygems"

PLUGIN   = "ncurses"
NAME     = "snowleopard-ncurses"
VERSION  = "1.2.4"
AUTHOR   = ["Tobias Peters", "Ralf Papenkordt"]
EMAIL    = "t-peters@users.berlios.de"
HOMEPAGE = "http://totalrecall.wordpress.com"
SUMMARY  = "Updated for Snow Leopard ruby 1.9.2 (Ralf Papenkordt). This wrapper provides access to the functions, macros, global variables and constants of the ncurses library. These are mapped to a Ruby Module named Ncurses."

spec = Gem::Specification.new do |s|
  s.name          = NAME
  s.email         = EMAIL
  s.authors        = AUTHOR
  s.version       = VERSION
  s.summary       = SUMMARY
  s.platform      = Gem::Platform::RUBY
  s.has_rdoc      = false
  s.homepage      = HOMEPAGE
  s.description   = SUMMARY
  s.autorequire   = PLUGIN
  s.require_paths = ["lib"]
  s.files = Dir.glob("[A-Z]*") + Dir.glob("*.{c,h,rb}") + Dir.glob("{examples,lib}/**/*")
  s.extensions    = "extconf.rb"
end
# adapted by rkumar for ruby 1.9.2 ncurses (rbcurse widget library)
# save this file as ncurses.gemspec in same folder
# gem build ncurses124.gemspec
# gem install --local snowleopard-ncurses-1.2.4.gem
