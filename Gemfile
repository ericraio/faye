require 'rbconfig'
HOST_OS = RbConfig::CONFIG['host_os']
source 'https://rubygems.org'
gem 'rails'
gem 'unicorn'
gem "capistrano"
gem 'mysql2'

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

group :development do
  gem "ruby-debug19"
  gem "guard-bundler", ">= 0.1.3"
end

gem "rspec-rails", :group => [:test, :development]

group :test do
  gem "factory_girl_rails"
  gem "capybara"
  gem "guard-rails", ">= 0.0.3"
  gem "guard-livereload", ">= 0.3.0"
  gem "guard", ">= 0.6.2"
  gem "guard-rspec"
end

# Jquery
#
gem 'jquery-rails'
gem "rails3-jquery-autocomplete"

# Search
#
gem 'thinking-sphinx'

# Views
#
gem 'twitter-bootstrap-rails'
gem "pjax_rails"

# Models
#
gem 'jamesearl-rails-settings', :require => 'rails-settings'

# Authentication
#
gem "devise", ">= 2.0.4"
gem "devise_invitable", ">= 1.0.0"
gem "omniauth-facebook"

# Background Process
#
gem 'delayed_job_active_record'
gem 'daemons'
gem "smtp_with_gmail"
gem "highline"
gem "whenever", :require => false

# Other
#
gem "paperclip", "~> 2.7"
gem 'forum_monster'
gem 'kaminari'
gem "mechanize"
gem "hpricot"
gem 'therubyracer'

# WebServices
#
gem 'koala'
