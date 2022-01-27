def solution(numbers)
    # Type your solution here
    sorted_number = numbers.sort

    if numbers.empty?
        return 0
    else
        sorted_number.last
    end
    

end

puts "#{solution([7, 2, 6, 3])}"
puts "#{solution([])}"