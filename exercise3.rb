class Player

    def initialize()
        @gold_coins = 0
        @health_points = 10
        @lives = 5
    end 

    def level_up
        @lives += 1
    end 

    def collect_treasure(player)
        @gold_coins += 1
        if @gold_coins % 10 == 0 
            player.level_up
        end 
    end 

    def do_battle(player, damage)
        @health_points -= damage 
        if @health_points > 1 
            if @lives >= 1
                @lives -= 1 
                @health_points = 10
            else 
                player.restart 
            end 
        end 
    end 

    def restart 
        @gold_coins = 0
        @health_points = 10
        @lives = 5
    end 

end 

bob = Player.new 
# p bob 

bob.level_up
bob.collect_treasure(bob)
bob.collect_treasure(bob)
bob.collect_treasure(bob)
bob.collect_treasure(bob)
bob.collect_treasure(bob)
bob.collect_treasure(bob)
bob.collect_treasure(bob)
bob.collect_treasure(bob)
bob.collect_treasure(bob)
bob.collect_treasure(bob)
bob.collect_treasure(bob)
bob.collect_treasure(bob)
bob.collect_treasure(bob)


p bob 

# bob.restart
bob.do_battle(bob, 5)
bob.do_battle(bob, 5)
bob.do_battle(bob, 5)
bob.do_battle(bob, 5)
bob.do_battle(bob, 5)
bob.do_battle(bob, 5)
bob.do_battle(bob, 5)
bob.do_battle(bob, 5)
p bob