require 'caliph'

class Prereq::Requirement
  class CLI < Prereq::Requirement
    include Caliph::CommandLineDSL

    def initialize(arg = nil)
      super()
      case arg
      when String
        @command = arg
      else
        raise "CLI Requirement needs a command"
      end
    end


    private
    def execute
      command = cmd(@command)
      shell = Caliph::Shell.new
      if shell.run(command).succeeded?
        :succeeded
      else
        :failed
      end
    end
  end
end
