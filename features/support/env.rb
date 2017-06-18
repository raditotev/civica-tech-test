require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'rspec/expectations'
require 'site_prism'
require 'pry'

# Helper module initializing page objects
require_relative 'pages/_pages'
World(Pages)

# Set default driver and start a new instance
Capybara.default_driver = :selenium
  Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => ENV['BROWSER'].to_sym)
end

# Enable Capybara's implicit wait method
SitePrism.configure do |config|
  config.use_implicit_waits = true
end
