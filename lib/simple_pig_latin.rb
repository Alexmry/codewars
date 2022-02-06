def pig_it(text)
    result = []

    last = []

    if text.split(" ").last == ["!"]
        last << text.split(" ").last
        text.pop
    end

    text.split(" ").each do |word|
        new_word = word.split("").drop(1) << word.split("").first << "ay"
        result << new_word.join("")
    end

    res = result << last
    res.join(" ")
end


puts "#{pig_it('Pig latin is cool')}"  # igPay atinlay siay oolcay

puts "#{pig_it('Hello world !')}"   # elloHay orldway !