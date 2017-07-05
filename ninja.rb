require_relative "human"
class Ninja < Human
    def initialize
        super
        @stealth = 175
    end
    def steal(obj)
        self.attack(obj)
        @health += 10
        puts "Health is now #{ @health }"
    end 
    def get_away
        @health -= 15
        puts "Health is now #{ @health }"
    end      
end 

ninja1 = Ninja.new
ninja2 = Ninja.new
ninja1.steal(ninja2)
ninja1.get_away


   