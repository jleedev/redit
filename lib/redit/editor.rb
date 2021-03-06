require 'redit/buffer'
require 'redit/command'

module Redit

  # A high-level editor interface. This keeps track of editor state
  # outside of buffers, and implements the high-level control of
  # editing.
  #--
  # For now, we tie an editor instance to exactly one buffer. Maybe
  # later we'll want to have the editor manage multiple buffers or
  # delegate to a buffer manager. Whatever.
  class Editor
    attr_reader :buffer

    def initialize( buf = nil )
      @buffer = buf || Buffer.new
    end

    def process( str )
      ret = nil
      count,cmd,rest = Command.parse str
      if cmd.nil?
        puts '?'
      else
        count.times do
          ret = @buffer.send cmd, rest
        end
      end
      ret
    end

  end

end
