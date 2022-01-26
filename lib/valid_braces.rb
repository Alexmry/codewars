def validBraces(braces)
  # for a string of braces, make sure there is the closing braces
  # if there is the closing braces, return true
  # if there is not the closing braces, return false
    # splitted_array = braces.split('').each_slice(2).to_a
    # splitted_array = braces.split('')

    true_false = []

    # splitted_array.each do |a|
    #     a.each do |a, b|

    #     end
    # end


        if braces.include?("(") && braces.include?(")")
            true_false << true
        else
           true_false << false
        end

        if braces.include?("{") && braces.include?("}")
            true_false << true
        else
           true_false << false
        end



        if braces.include?("[") && braces.include?("]")
            true_false << true
        else
           true_false << false
        end

    
    true_false.each do |e|
        if e == true
            return true
        else
            return false
        end
    end

end

validBraces("(){}[]")
validBraces("[(])")

# "(){}[]"   =>  True
# "([{}])"   =>  True
# "(}"       =>  False
# "[(])"     =>  False
# "[({})](]" =>  False