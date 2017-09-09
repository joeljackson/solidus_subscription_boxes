# encoding: UTF-8
$:.push File.expand_path('../lib', __FILE__)
require 'solidus_subscription_boxes/version'

Gem::Specification.new do |s|
  s.name        = 'solidus_subscription_boxes'
  s.version     = SolidusSubscriptionBoxes::VERSION
  s.summary     = 'Add subscription box support to Solidus'
  s.description = 'Add subscription box support to Solidus'
  s.license     = 'BSD-3-Clause'

  s.author    = 'Joel Jackson'
  s.email     = 'joel@eatlessme.at'
  s.homepage  = 'https://github.com/joeljackson/solidus_subscription_boxes'

  s.files = Dir["{app,config,db,lib}/**/*", 'LICENSE', 'Rakefile', 'README.md']
  s.test_files = Dir['test/**/*']

  s.add_dependency 'solidus'
  s.add_dependency "solidus_support"
  s.add_dependency "solidus_subscriptions-alpha"
  s.add_dependency 'deface'
  s.add_dependency 'state_machines'
  s.add_dependency 'i18n'
  s.add_dependency 'slim'

  s.add_development_dependency 'byebug'
  #s.add_development_dependency 'capybara'
  #s.add_development_dependency 'coffee-rails'
  #s.add_development_dependency 'database_cleaner'
  #s.add_development_dependency 'factory_girl'
  #s.add_development_dependency 'poltergeist'
  #s.add_development_dependency 'pry'
  #s.add_development_dependency 'rspec'
  #s.add_development_dependency 'rspec-activemodel-mocks'
  #s.add_development_dependency 'rspec-rails', '~> 3.5'
  #s.add_development_dependency 'rubocop', '0.37.2'
  #s.add_development_dependency 'rubocop-rspec', '1.4.0'
  #s.add_development_dependency 'sass-rails'
  #s.add_development_dependency 'shoulda-matchers', '~> 3.1'
  #s.add_development_dependency 'simplecov'
  #s.add_development_dependency 'sqlite3'
  #s.add_development_dependency 'timecop'
  #s.add_development_dependency 'versioncake'
  #s.add_development_dependency 'yard'
end
