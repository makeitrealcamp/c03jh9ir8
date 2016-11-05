# Rails.application.configure do
  # # Settings specified here will take precedence over those in config/application.rb.

  # # The test environment is used exclusively to run your application's
  # # test suite. You never need to work with it otherwise. Remember that
  # # your test database is "scratch space" for the test suite and is wiped
  # # and recreated between test runs. Don't rely on the data there!
  # config.cache_classes = true

  # # Do not eager load code on boot. This avoids loading your whole application
  # # just for the purpose of running a single test. If you are using a tool that
  # # preloads Rails for running tests, you may have to set it to true.
  # config.eager_load = false

  # # Configure static file server for tests with Cache-Control for performance.
  # config.public_file_server.enabled = true
  # config.public_file_server.headers = { 'Cache-Control' => 'public, max-age=3600' }

  # # Show full error reports and disable caching.
  # config.consider_all_requests_local       = true
  # config.action_controller.perform_caching = false

  # # Raise exceptions instead of rendering exception templates.
  # config.action_dispatch.show_exceptions = false

  # # Disable request forgery protection in test environment.
  # config.action_controller.allow_forgery_protection = false

  # # Tell Action Mailer not to deliver emails to the real world.
  # # The :test delivery method accumulates sent emails in the
  # # ActionMailer::Base.deliveries array.
  # config.action_mailer.delivery_method = :test

  # # Randomize the order test cases are executed.
  # config.active_support.test_order = :random

  # # Print deprecation notices to the stderr.
  # config.active_support.deprecation = :stderr

  # # Raises error for missing translations
  # # config.action_view.raise_on_missing_translations = true
# end


Skip to content
This repository
Search
Pull requests
Issues
Gist
 @leono286
 Watch 4
  Star 0
 Fork 23 makeitrealcamp/c03jh9ir8
 Code  Issues 0  Pull requests 10  Projects 0  Wiki  Pulse  Graphs
Branch: master Find file Copy pathc03jh9ir8/Gemfile
b2eae57  on 19 Jun
@juan267 juan267 fix gemfile versions
2 contributors @juan267 @germanescobar
RawBlameHistory     
35 lines (28 sloc)  2.05 KB
source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.0'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
  # Use SCSS for stylesheets      # Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
  # Use Uglifier as compressor for JavaScript assets      # Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
  # Use CoffeeScript for .coffee assets and views     # Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
  # See https://github.com/sstephenson/execjs#readme for more supported runtimes      # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', platforms: :ruby      # gem 'therubyracer', platforms: :ruby

gem 'jquery-rails'
  # Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks     # Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
  # Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder     # Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
  # bundle exec rake doc:rails generates the API under doc/api.     # bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

group :development do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console       # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views        # Access an IRB console on exception pages or by using <%= console %> in views
 gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring        # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end
Contact GitHub API Training Shop Blog About
© 2016 GitHub, Inc. Terms Privacy Security Status Help