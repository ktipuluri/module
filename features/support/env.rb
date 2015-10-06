# encoding: UTF-8
require 'rspec/expectations'
require 'capybara/cucumber'
require 'json'
require 'date'
require 'selenium/webdriver'
require 'capybara/poltergeist'
require 'capybara/cucumber'
 
Capybara.default_driver = :selenium

Capybara.register_driver :active_browser do |app|
    Capybara::Selenium::Driver.new(app, :browser => :chrome)

# Capybara.register_driver :selenium do |app|
#   Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

$default_timeout   =['TIMEOUT'] || 30
Capybara.default_driver    = :active_browser
Capybara.javascript_driver = :active_browser
Capybara.default_wait_time = $default_timeout
Capybara.default_selector  = :css


Before do
  window = Capybara.current_session.driver.browser.manage.window
  window.resize_to(1280,1024)
end

Around do |scenario, block|
  block.call
  ::Capybara.current_session.driver.quit
end

Capybara.default_wait_time = 90
Capybara.default_selector = :css