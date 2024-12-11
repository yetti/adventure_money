# frozen_string_literal: true

# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative "config/application"
require "rake/testtask"

Rails.application.load_tasks

Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/*_test.rb'
  test.verbose = true
end

namespace :coverage do
  task :report do
    require 'simplecov'
    require 'simplecov-json'
    require 'simplecov-cobertura'

    SimpleCov.collate Dir["coverage/**/.resultset.json"], 'rails' do
      formatter SimpleCov::Formatter::MultiFormatter.new(
        [
          SimpleCov::Formatter::HTMLFormatter,
          SimpleCov::Formatter::JSONFormatter,
          SimpleCov::Formatter::CoberturaFormatter
        ]
      )
    end
  end
end

task default: :test
