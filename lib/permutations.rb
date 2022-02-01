def permutations(string)
  #your code here
#   array_of_shuffled_string = []
  
    # string_shuffled = string.split("").shuffle.join
#   x = 0

#   while array_of_shuffled_string.include?(string_shuffled)
#     array_of_shuffled_string << string_shuffled
#     string_shuffled = string.split("").shuffle.join
#   end

    # while x <= 1000
    #     array_of_shuffled_string << string.split("").shuffle.join
    #     x += 1
    # end
    # return array_of_shuffled_string.uniq

    letters = string.split('')
    # letters.combination(2).to_a
    big_array = letters.permutation(letters.length).to_a

    array_of_strings = []

    big_array.each do |array|
        stringgg = array.join("")
        array_of_strings << stringgg
    end

    return array_of_strings.uniq

end


puts "#{permutations('aabb')}"
# ['aabb', 'abab', 'abba', 'baab', 'baba', 'bbaa']


# solution
# string.chars.permutation.map(&:join).uniq