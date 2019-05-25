require 'rspec'
require 'cucumber/rails'
require 'capybara/rspec'
require 'capybara'
require 'capybara/cucumber'
require 'capybara/dsl'

Capybara.register_driver :chrome do |app|
    Capybara::Selenium::Driver.new(app, :browser => :chrome)
end