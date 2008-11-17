module Redit

    CMD_REGEX = '[iq]'

class Command

    def Command.parse( line )
        /^([0-9]+)*(#{CMD_REGEX})(.*)$/.match line
        cmd,rest = $2,$3
        count = ($1 or 1).to_i
        [count,cmd,rest]
    end

end

end
