def format(number)
    # turn number into a string
    # number_as_string = number.to_i
    number_as_string = number.to_s
    # remove the spaces
    number_without_space = number_as_string.gsub(/[^0-9]/, '') 

    # check what the string start_with?
    if number_without_space.start_with?("07")
        number_without_space.sub!(/^0/, '')
    elsif number_without_space.start_with?("447")
        number_without_space.sub!(/^44/, '')
    else
        raise StandardError.new "This is not a UK number"
    end

    return "+44".concat(number_without_space)
end


# For example, if I call format with 071234 56789 as the input, it should return +447123456789. If I call it with 0634343, it should raise an error.

puts "#{format("071234 56789")}"
puts "#{format("+4471234 56789")}"
puts "#{format("4471234 56789")}"
puts "#{format("0634343")}"