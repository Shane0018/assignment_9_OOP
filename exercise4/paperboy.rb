class Paperboy

    def initialize(name, experience, earnings)
        @name = name
        @experience = experience #number of papers they've delivered
        @earnings = earnings #money they've earned  
    end 

    attr_accessor :name, :experience
    attr_reader :earnings

    
    def quota
        quota = 50 + (@experience / 2) 
        return quota 
    end     
        
    def delivered(start_address, end_address)
        number_of_houses = end_address - start_address
        #paperboy gets 25 cents for every paper delivered
        daily_earnings = number_of_houses * 0.25
        if quota > number_of_houses
            #he didn't fill his quota, so 2 dollars are taken away
            daily_earnings -= 2.0
        else quota < number_of_houses
            #he delivered extra, so he gets an additional 25 cents
            #for every extra paper  
            extra_deliveries = number_of_houses - quota 
            daily_earnings += extra_deliveries * 0.25
        end 
        @experience += number_of_houses / 2
        @earnings += daily_earnings 
        #return the amount of money earned as a floater
        return daily_earnings
    end 
        

    def report
        "I'm #{@name}, and I've delivered #{@experience} papers and I've earned $#{@earnings} so far!"
    end 
    

end 

paperboy1 = Paperboy.new("Joe", 25, 10)

# p paperboy1.earnings

puts paperboy1.report
puts paperboy1.quota 
puts paperboy1.delivered(123, 200)
# p paperboy1
puts paperboy1.report
puts paperboy1.name
puts paperboy1.name = ("Moe")
puts paperboy1.name
puts paperboy1.earnings
puts paperboy1.experience
        