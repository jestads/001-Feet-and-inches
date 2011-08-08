# encoding: utf-8

require 'rspec/core/rake_task'
require 'rubygems'
require 'bundler'
require 'metric_fu'
require 'rake'

MetricFu::Configuration.run do |config|
  config.rcov[:rcov_opts] << "-Ispec" # Needed to find spec_helper
end

RSpec::Core::RakeTask.new
