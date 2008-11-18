module Redit

  class Cmd

    @@table = {}

    class << self
      def command sym
        (@@table[sym] ||= []) << self
      end
    end

    def self.[] cmd,args
      @@table[cmd].each {|cls| cls[args]}
    end

  end

  class Append < Cmd

    command :a

    def self.[] args
      puts "Appending ur #{args.inspect}!"
    end

  end

end
