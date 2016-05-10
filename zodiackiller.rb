#we need to build a cipher, decode is randomly generated
ALPHABET = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
DECODE = "e0POTx7VmWqGSiLuk9Jh8K5RoQdnEvgDACB4wlF3r6spbIjyctN2aMZH1zYXfU"

#functions to do the stuffs
def encode(text)
    return text.tr(ALPHABET, DECODE)
end

def decode(text)
    return text.tr(DECODE, ALPHABET)
end

#now get user data
print "Do you want to encrypt or decrypt?"
answera = gets.chomp.downcase

	if answera == "encrypt"
	print "Go ahead."
	answerb = gets.chomp.downcase
	puts encode(answerb)

	elsif answera == "decrypt"
	print "Go ahead."
	answerc = gets.chomp.downcase
	puts decode(answerc)

	else puts "That's not an option. Try again."
end


#does this even need a hash? suppose you could put every letter in a hash 