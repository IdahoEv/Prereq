require "codeclimate-test-reporter"
CodeClimate::TestReporter.start

require 'rspec'
require 'rspec/core/formatters/base_formatter'

$:.unshift("./lib")

require 'prereq'

RSpec.configure do |config|
  config.backtrace_inclusion_patterns = []
  config.run_all_when_everything_filtered = true
end
