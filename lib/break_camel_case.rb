# Complete the solution so that the function will break up camel casing, using a space between words.

# "camelCasing"  =>  "camel Casing"
# "identifier"   =>  "identifier"
# ""             =>  ""

def solution(string)
  # complete the function

  splited_string = string.split("")
  downcase_letter = ""

  splited_string.select do |l|
    if l == l.upcase
        downcase_letter += " " + l
    else
        downcase_letter += l
    end
    # if l.downcase
    #      downcase_letter << l
    # end
    # return "#{l} and #{index}"
  end

return downcase_letter

end

puts "#{solution("camelCasing")}"