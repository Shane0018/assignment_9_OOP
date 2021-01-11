class BankAccount 

    def initialize(balance, interest_rate)
        @balance = balance
        @interest_rate = interest_rate
    end 

    # attr_accessor :balance, :interest_rate

    def deposit(amount)
        @balance = @balance + amount
    end  

    def withdraw(amount)
        @balance -= amount
    end 

    def gain_interest
        @balance += @balance * @interest_rate
    end 

end 

customer1 = BankAccount.new(100, 0.03)
p customer1
customer1.deposit(75)
p customer1
customer1.withdraw(25)
p customer1
customer1.gain_interest
p customer1