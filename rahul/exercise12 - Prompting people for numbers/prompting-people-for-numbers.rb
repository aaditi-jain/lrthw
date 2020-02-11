print 'Give me a number: '
number = gets.chomp.to_i

puts "A bigger number is #{number * 100}"

print 'Give me another number: '
number = gets.chomp.to_i

puts "A smaller number is #{number / 100}."
