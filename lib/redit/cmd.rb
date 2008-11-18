module Redit

class Cmd
    @@table = {}

    class << self
        def command sym
            @@table[c] ||= []
            @@table[c] << self
        end
    end

    def self.[] cmd,args
        @@table[cmd].each {|cls| cls[args]}
    end
end

class Append < Cmd
    command :a
    def [] args
        puts "Appending ur #{args.inspect}!"
    end
end

end
