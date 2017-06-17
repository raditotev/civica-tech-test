require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'rspec/expectations'
require 'site_prism'
require 'pry'

require_relative 'pages/_pages'
World(Pages)

Capybara.default_driver = :selenium
  Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => ENV['BROWSER'].to_sym)
end

SitePrism.configure do |config|
  config.use_implicit_waits = true
end
