require 'redit/command'

module Redit

    VERSION = '0.0.0'
    PROGRAM_NAME = 'redit'

class Redit

    def initialize( argv = [] )
        @command = Command.new
    end

    def start
        exiting = false
        while ! exiting do
            buf = gets
            exiting = @command.process buf
        end
    end

end

end
