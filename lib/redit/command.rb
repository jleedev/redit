module Redit

    CMD_REGEX = '[iq]'

class Command

    def process str
        /^(#{CMD_REGEX})(.*)$/.match(str)
        cmd = $1
        args = $2
        self.send $1, $2
    end

    def i str
        puts str
    end

    def q str
        true
    end

end

end
