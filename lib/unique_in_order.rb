def unique_in_order(iterable)
  #your code here

  # arr = iterable.split("")
  # array = arr.each_slice(2).to_a
  # results = []
  # array.each do |a|
  #   b = a.uniq
  #   results << b
  # end
  
  # return results

  result = []
  iterable = iterable.split("") if !iterable.is_a? Array
  iterable.each_with_index {|x,i| result << x if iterable[i-1] != x || i == 0}
  result

end


# unique_in_order('AAAABBBCCDAABBB') == ['A', 'B', 'C', 'D', 'A', 'B']


puts "#{unique_in_order('AAAABBBCCDAABBB')}"