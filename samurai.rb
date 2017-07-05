require_relative "human"
class Samurai < Human
    @@count = 0
    def initialize
        super
        @health = 200
        @@count += 1
    end
    def death_blow(obj)
        obj.health = 0
        puts "Opponent's health is now #{ obj.health }"
    end   
    def meditate
        @health = 200
        puts "Health restored to #{ @health }"
    end  
    def how_many
        puts @@count 
    end             
end 

samurai1 = Samurai.new
samurai2 = Samurai.new
samurai1.death_blow(samurai2) 
samurai2.meditate   
samurai1.how_many  