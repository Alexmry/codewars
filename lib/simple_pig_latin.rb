def pig_it(text)
    result = []
    text.split(" ").each do |word|
        new_word = word.split("").drop(1) << word.split("").first << "ay"
        result << new_word.join("")
    end

    result.join(" ")
end


puts "#{pig_it('Pig latin is cool')}"  # igPay atinlay siay oolcay