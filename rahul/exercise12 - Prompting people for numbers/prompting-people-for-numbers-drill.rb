print 'Give some  money: '
get_money = gets.chomp.to_f

puts 'you will get 10 percent of the money back: %.2f' % (get_money * 0.1)
