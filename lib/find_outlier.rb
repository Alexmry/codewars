def find_outlier(integers)
    odd = []
    even = []

    integers.each do |n|
        if n.odd?
            odd << n
        else
            even << n
        end
    end

    # return odd
    if odd.length <= 1
        return odd[0]
    elsif even.length <= 1
        return even[0]
    end
end

puts "#{find_outlier([160, 3, 1719, 19, 11, 13, -21])}"
puts "#{find_outlier([0, 1, 2])}"
puts "#{find_outlier([1, 2, 3])}"

puts "#{find_outlier([2, 4, 0, 100, 4, 11, 2602, 36])}"

# the solutions
# integers.count(&:even?) > 1 ? integers.find(&:odd?) : integers.find(&:even?)