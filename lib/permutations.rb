def permutations(string)
  #your code here
#   string_shuffled = string.split("").shuffle.join
  array_of_shuffled_string = []

  x = 0

#   while array_of_shuffled_string.include?(string_shuffled)

#   end

    while x <= 1000
        array_of_shuffled_string << string.split("").shuffle.join
        x += 1
    end

    return array_of_shuffled_string.uniq

end


puts "#{permutations('aabb')}"