require_relative "human"
class Wizard < Human 
    def initialize
        super
        @health = 50
        @intelligence = 25
    end
    def heal
        @health += 10
        puts "Health is now #{ @health }"
    end
    def fireball(obj)
        obj.health -=20
        puts "Opponent's health is now #{ obj.health }"
    end        
end    
wizard1 = Wizard.new
wizard1.heal  
human1 = Human.new
wizard1.fireball(human1)