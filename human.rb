class Human
    attr_accessor :health 
    def initialize 
        @strength = 3
        @stealth = 3
        @intelligence = 3
        @health = 100
    end
    def attack(obj)
        if obj.class.ancestors.include? Human
            obj.health -= 50
            puts "Opponent's health is now #{ obj.health }"  
        end          
    end     
end     
 
human1 = Human.new
human2 = Human.new
        