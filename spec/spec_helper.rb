require 'rspec/core'
require 'rspec/mocks'
require 'rspec/autorun'

Dir[File.expand_path(File.join(File.dirname(__FILE__),'../lib/','**','*.rb'))].each {|file| require file}