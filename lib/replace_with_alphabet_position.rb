module ReplaceWithAlphabetPosition

    def alphabet_position(text)
        # turn the string into an array & remove space or ponctuation
        string_array = text.downcase.chars.reject { |a| a == " " || a == "." || a == "'" || a == "-"}

        # create a hash with alphabet as keys and alphabet positions as value.
        letter_and_postion = {}
        ('a'..'z').to_a.each_with_index do |l, index|
            letter_and_postion[l] = index + 1     
        end
        
        # read the hash with the string turned into the array
        position_string = []

        string_array.each do |l|
            if letter_and_postion.key?(l)
                position_string <<  letter_and_postion[l]
            end
        end

        # return text alphabet_position (into a string)
        return position_string.join(',')
        
        # alphabet_position("The sunset sets at twelve o' clock.")
    end 
end