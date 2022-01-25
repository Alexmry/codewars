def anagrams(word, words)
    array_splitted_words = []
    splitted_word = word.split('')
    #for each word in the array
    words.each do |w|
       array_splitted_words << w.split("")
    end

    # for each letter of each word, compare them with word
    # if the letter are the same, it does not have to be in the same order
    # => return the anagrams words

    anagrams = []
    array_splitted_words.each do |wo|
      if splitted_word - wo = []
        anagrams << wo
      end
    end

    return anagrams

end

puts "#{anagrams('abba', ['aabb', 'abcd', 'bbaa', 'dada'])}"

# anagrams('abba', ['aabb', 'abcd', 'bbaa', 'dada']) => ['aabb', 'bbaa']


# [1, 2, 1].to_set == [2, 1, 1].to_set 