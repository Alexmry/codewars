#[3, 6, 2, 9, -1, 10]

#      3
#    6    2      
# 9         10

def solution(arr)

    # array_without_the_first_node = arr[1].upto(arr.last).to_a




    arr_odd=[]
    arr_even=[]
    arr.each {|x| arr.index(x).even? ? arr_even << x : arr_odd << x}

    # return arr_even
    return arr_odd
end

puts "#{solution([3, 6, 2, 9, -1, 10])}"