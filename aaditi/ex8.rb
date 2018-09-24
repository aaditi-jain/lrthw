# % Notation is used for quoting strings. Any Non-Alphanumeric character
# can be used as delimiter

puts %(Hello)
puts %^Hello^

# Modifiers after the % literal like %w[] %i[] etc determine how
# the string is interpolated and what type of object to produce

# %q[] Non Interpolated String
# Output: One Plus One is = #{1 + 1}
puts %q[One Plus One is = #{1 + 1}]

# %Q[] Interpolated String
# Output: One Plus One is = 2
puts %Q[One Plus One is = #{1 + 1}]

# Non Interpolated array of words %w[]
# Output:
# apple
# grapes
# banana
# #{1
# +
# 1
# +
# 1}fruits
puts %w[apple grapes banana #{1 + 1 + 1}fruits]

# %W[] Interpolated array of words
# Output:
# apple
# grapes
# banana
# 3fruits
puts %W[apple grapes banana #{1 + 1 + 1}fruits]

# %i[] Non Interpolated Array of Symbols
# Output:
# symbol1
# symbol2
# symbol#{1+1+1}
# Symbol
# Symbol
# Symbol
puts %i[symbol1 symbol2 symbol#{1+1+1}]
puts %i[symbol1 symbol2 symbol3].map(&:class)

# %I[] Interpolated Array of Symbols
# Output:
# symbol1
# symbol2
# symbol3
# Symbol
# Symbol
# Symbol
puts %i[symbol1 symbol2 symbol3]
puts %I[symbol1 symbol2 symbol#{1 + 1 + 1}].map(&:class)

# %s[] Non Interpolated Symbol
# Output: {:symbol1 => 12}
# Output: {:"symbol1 with space" => 12}
test_hash = { %s[symbol1] => 12 }
puts test_hash

test_hash = { %s[symbol1 with space] => 12 }
puts test_hash


# %x[] Interpolated Shell Command
puts %x[echo $GOPATH]


#Exercises:
formatter = "%{first} %{second} %{third} %{fourth}"
puts formatter % {first: 1, second: 2, third: 3, fourth: 4}
puts formatter % {first: formatter, second: formatter, third: formatter, fourth: formatter}