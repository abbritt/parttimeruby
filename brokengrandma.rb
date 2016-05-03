#weird grandma wants to talk 
#turn number into string! 

puts "How are you?"

answer = gets.chomp
number = rand(1930..1980)

while answer != "BYE"
    if answer != answer.upcase
      puts "SPEAK UP!"
    else
      puts "NO, NOT SINCE " + number.to_s
    end
  end
  puts "BYE!"










