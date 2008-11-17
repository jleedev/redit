require 'redit/editor'

module Redit

    VERSION = '0.0.0'
    PROGRAM_NAME = 'redit'

class Redit

    def initialize( argv = [] )
        @editor = Editor.new
    end

    def start
        @exiting = false
        while ! @exiting do
            buf = gets
            @exiting = @editor.process buf
        end
    end

end

end
