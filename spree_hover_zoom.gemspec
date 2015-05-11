# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_hover_zoom'
  s.version     = '1.0.0'
  s.summary     = 'zoom for Spree product images'
  s.description = 'Provides on mouse hover zoom to Spree product images'
  s.required_ruby_version = '>= 1.8.7'

  s.author    = 'Thomas Statter'
  s.email     = 'opensource@autotelik.co.uk'
  s.homepage  = 'http://www.github.com/autotelik'
  s.licenses = ["MIT"]

  #s.files       = `git ls-files`.split("\n")
  #s.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  #s.add_dependency 'spree', '2.1.stable'
end
