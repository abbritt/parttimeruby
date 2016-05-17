#create a stack of cards for the player
class Player 

	attr_accessor :value, :value2, :value3

    def initialize  
        $value = ""
        $value2 = ""
        $value3 = ""
    end

    def deck 
    	$value = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10,1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 1, 2]
    	$value2 = $value.shuffle 
    	$value3 = $value2.delete_at(0).to_i
    	puts $value3 
    end 


end

class Opponent

	attr_accessor :value2, :value4, 

	def initialize 
		$value2 = ""
		$value4 = ""
	end 

	def deck2
		$value4 = $value2.delete_at(0).to_i
		puts $value4
	end 

end



#the player needs to see their cards
puts "The game is blackjack."
puts "Here's your hand."

player = Player.new.deck
player2 = Player.new.deck
puts player
print player2 
total = player.to_i + player2.to_i #why won't this total???

puts "Here's one of my cards. Do you want to hit or stay?"
#now the dealer needs two cards, but the player can only see one. then get their input
dealer = Opponent.new.deck2 
print dealer

while true 
answer = gets.chomp.downcase
if answer == "hit"
	hitme = puts Player.new.deck
	puts hitme 
	total2 = hitme.to_i + total.to_i 
	if total2 >= 21
		break 
	end 

elsif answer == "stay"
	puts "Alright. I'll draw." 
	dealer2 = Opponent.new.deck2
	total3 = dealer.to_i + dealer2.to_i 
	if total3 >= 21
		break
	end 

else puts "Wanna try that again?"
end
end
