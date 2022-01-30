def unique_in_order(iterable)
  #your code here

  arr = iterable.split("")
  arr.uniq

end


# unique_in_order('AAAABBBCCDAABBB') == ['A', 'B', 'C', 'D', 'A', 'B']


puts "#{unique_in_order('AAAABBBCCDAABBB')}"