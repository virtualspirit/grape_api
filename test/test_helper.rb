ENV["RAILS_ENV"] ||= "test"
require "bundler/setup"
require "minitest/autorun"
require_relative "../spec/dummy/config/environment"
