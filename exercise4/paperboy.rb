class Paperboy

    def initialize(name, experience, earnings)
        @name = name
        @experience = experience
        @earnings = earnings
    end 

    attr_accessor :name, :experience
    attr_reader :earnings

    def quota(paperboy)

        
end 

paperboy1 = Paperboy.new("Joe", 25, 10)

# p paperboy1.earnings