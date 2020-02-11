@apples, @bananas, @oranges, @cherry = ARGV

@total_fruits = 0

ARGV.each do |input|
  @total_fruits += input.to_i
end

# for arg in ARGV
#     x += arg.to_i
# end

def eat_fruits( apples, bananas, oranges, cherry )
  puts "der"
end

def fruits_left

end

def offer_fruits
  while @total_fruits != 0
    puts 'Menu : '
    puts '1. Woud you like to some fruits'
    puts '2. Exit'
    choice = STDIN.gets.chomp.to_i
    if choice == 1
      puts 'which food would you like to have? '
      puts "We have : apples #{@apples}, bananas #{@bananas}, oranges #{@oranges}, cherry #{@cherry}"
      eat_fruits(@apples=0, @bananas=0, @oranges=0, @cherry=0)
    elsif choice == 2
      fruits_left
      break
    else
      puts 'invalid value'
      continue
    end
  end
end

offer_fruits