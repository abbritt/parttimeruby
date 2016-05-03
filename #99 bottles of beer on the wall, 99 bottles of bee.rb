bottles = 99

while bottles != 0 
puts bottles.to_s + ' bottles of beer on the wall, ' + bottles.to_s + ' bottles of beer.'
bottles = bottles - 1
puts 'Take one down and pass it around, ' + bottles.to_s + ' bottles of beer on the wall.'
puts ''
end

## bottles need to be converted to a string or else this won't work fyi
