class Prereq::Requirement
  class CLI < Prereq::Requirement
    def initialize(arg = nil)
      case arg
      when String
        @command = arg
      else
        raise "CLI Requirement needs a command"
      end
    end
  end
end
