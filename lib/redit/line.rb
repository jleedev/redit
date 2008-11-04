# A representation of a single line of text.

module Redit

class Line
    attr_reader :text

    def initialize( text )
        @text = text
    end
end

end
