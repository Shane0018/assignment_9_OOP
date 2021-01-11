class Cats 

    def initialize(name, preferred_food, meal_time)
        @name = name
        @preferred_food = preferred_food
        @meal_time = meal_time
    end

    def eats_at
        if @meal_time <= 12
            "#{@meal_time} AM"
        else 
            "#{@meal_time - 12} PM"
        end 
    end  

    def meow(cat)
        puts "My name is #{@name} and I eat #{@preferred_food} at #{cat.eats_at}"
    end 

end 

meo = Cats.new("Meo", "fish", 22)
eow = Cats.new("Eow", "cat food", 12)

# p meo
# p eow 

# eow.meow(eow)
# meo.meow(meo)

puts meo.eats_at