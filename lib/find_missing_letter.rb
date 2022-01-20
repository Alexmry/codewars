module FindMissingLetter

    def find_missing_letter(arr)

        array_alphabet = ('a'..'z').to_a



        # For the array, start at the 1dt element of this array

        # compare it to alphabet Array and which letter is missing

    

        missing_letter = []

        array_alphabet.each do |l|
            if arr.index(l)
                puts "#{l} exists in the array"
            else 
                #add the missing letter
                missing_letter << l 
            end
        end

        # return the missing letter || or nil if no letter is missing

    end

end


array_alphabet.each do |l|
    if ["a","b","c","d","f"].index(l)
        puts "#{l} exists in the array"
    else 
        missing_letter << l 
    end
end