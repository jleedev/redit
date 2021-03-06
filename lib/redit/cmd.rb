module Redit

  # A representation of an editor command. Redit can be extended by
  # subclassing and manipulating this class.
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


  if __FILE__ == $0
    Cmd[:a,"foo"]
  end

end
