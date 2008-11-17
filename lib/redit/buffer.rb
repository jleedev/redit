module Redit

    # A text buffer. This is something we're editing; eventually, it
    # should be the structure used internally whenever we are working
    # with text. For now, it's basically just a string with an optional
    # name.
class Buffer
    attr_reader   :buffer_name
    attr_accessor :contents

    def initialize( name = nil )
        @buffer_name = name
        @contents = ""
    end

    def append( str )
        @contents += str
    end

    def close
        # Useful once we start actually saving files.
    end

end

end
