source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

# Specify your gem's dependencies in grape_api.gemspec.
gemspec

rails_version = ENV.fetch("RAILS_VERSION", ">= 7.1")
gem "rails", rails_version

group :development, :test do
  gem 'sqlite3', '>= 2.1'
end

# To use a debugger
gem 'byebug', group: [:development, :test]
gem "grape", ">= 2.0", "< 3"
gem "grape_on_rails_routes", "~> 0.3.2"
gem "grape-entity", ">= 1.0", "< 2"