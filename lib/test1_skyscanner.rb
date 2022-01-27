# write a fonction that takes a list
# return the highest number of this list
# if there are no number in the list return 0

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