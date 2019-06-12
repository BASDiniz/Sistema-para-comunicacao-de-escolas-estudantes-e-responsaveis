require 'rspec'
require 'cucumber/rails'
require 'capybara/rspec'
require 'capybara'
require 'capybara/cucumber'
require 'capybara/dsl'

Cucumber::Rails::Database.autorun_database_cleaner = false
DatabaseCleaner.strategy = :truncation
Cucumber::Rails::Database.javascript_strategy = :truncation

Before do
    DatabaseCleaner.clean
end