# frozen_string_literal: true

require 'rspec/expectations'
require 'capybara/spec/spec_helper'
require 'webdrivers' if ENV['CI']
require 'selenium_statistics'

module Capybara
  module SpecHelper
    def firefox?(session)
      browser_name(session) == :firefox &&
        ((defined?(::Selenium::WebDriver::VERSION) && (::Selenium::WebDriver::VERSION.to_f >= 4)) ||
         session.driver.browser.capabilities.is_a?(::Selenium::WebDriver::Remote::W3C::Capabilities))
    end

    def firefox_lt?(version, session)
      firefox?(session) && (session.driver.browser.capabilities[:browser_version].to_f < version)
    end

    def firefox_gte?(version, session)
      firefox?(session) && (session.driver.browser.capabilities[:browser_version].to_f >= version)
    end

    def chrome?(session)
      browser_name(session) == :chrome
    end

    def chrome_lt?(version, session)
      chrome?(session) && (session.driver.browser.capabilities[:version].to_f < version)
    end

    def chrome_gte?(version, session)
      chrome?(session) && (session.driver.browser.capabilities[:version].to_f >= version)
    end

    def edge?(session)
      browser_name(session) == :edge
    end

    def ie?(session)
      %i[internet_explorer ie].include?(browser_name(session))
    end

    def safari?(session)
      %i[safari Safari Safari_Technology_Preview].include?(browser_name(session))
    end

    def browser_name(session)
      session.driver.browser.browser if session.respond_to?(:driver)
    end

    def remote?(session)
      session.driver.browser.is_a? ::Selenium::WebDriver::Remote::Driver
    end
  end
end

RSpec.configure do |config|
  Capybara::SpecHelper.configure(config)
  config.filter_run_including focus_: true unless ENV['CI']
  config.run_all_when_everything_filtered = true
  config.after(:suite) { SeleniumStatistics.print_results }
end
