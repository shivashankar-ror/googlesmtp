source 'https://rubygems.org'

# Framework
  gem 'rails', '4.2.3'

#Servers
  gem 'mysql2',         '~> 0.3.18'
  gem 'puma',           '~> 2.12.2'  

#Assets
  gem 'sass-rails',   '~> 5.0'
  gem 'uglifier',     '>= 1.3.0'
  gem 'coffee-rails', '~> 4.1.0'
  gem 'therubyracer', platforms: :ruby
  gem 'jquery-rails', '~> 4.0.4'
  gem 'jbuilder',  '~> 2.0'
  
#Documentation
  gem 'sdoc', '~> 0.4.0', group: :doc # bundle exec rake doc:rails generates the API under doc/api.

# Application
  gem 'strip_attributes', '~> 1.7.0'
  gem 'bcrypt',           '~> 3.1.7'
  gem 'sucker_punch',     '~> 1.0'

  group :development do 
    gem 'railroady',          '~> 1.3.1'
    gem 'annotate',           '~> 2.6.10'
    gem 'quiet_assets',       '~> 1.1.0'
  end

  group :development, :test do
    gem 'byebug',            '~> 5.0.0'
    gem 'web-console',       '~> 2.0'
    gem 'spring',            '~> 1.3.6'
    gem 'rspec-rails',       '~> 3.3.3'
    gem 'ffaker',            '~> 2.1.0'
    gem 'fabrication',       '~> 2.13.2'
    gem 'database_cleaner',  '~> 1.4.1'
    gem 'simplecov',         '~> 0.10.0', :require => false
  end

  group :test do 
    gem 'shoulda-matchers', github: 'thoughtbot/shoulda-matchers'
    gem 'shoulda-callback-matchers',  '~> 1.1.3'
    gem 'rspec-prof',                 '~> 0.0.5'
  end
