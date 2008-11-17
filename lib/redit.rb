require 'redit/command'

module Redit

    VERSION = '0.0.0'
    PROGRAM_NAME = 'redit'

class Redit

    def initialize( argv = [] )
        @command = Command.new
    end

    def start
        @exiting = false
        while ! @exiting do
            buf = gets
            self.process buf
        end
    end

    def process str
        /^([0-9])*(#{CMD_REGEX})(.*)$/.match str
        cmd,args = $2,$3
        count = ($1 or 1).to_i
        count.times do
            @exiting = @command.send cmd, args unless cmd.nil?
        end
    end

end

end
