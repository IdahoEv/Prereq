module Prereq
  class Requirement
    attr_accessor :status

    def initialize
      self.status = :not_run
    end

    def run
      self.status = execute
    end
  end
end

require 'prereq/requirement/cli'
