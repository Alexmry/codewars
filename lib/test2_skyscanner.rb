#suppose you are given a binary tree represented as an array
#[3, 6, 2, 9, -1, 10]
# where -1 is a non existant node

#      3
#    6    2      
# 9         10

# write a function that determines whether the left or the right branch of the tree is larger.
# the size of each branch of the tree is the sum of each node values.
# the function should return right if the side if larger and left if the side is larger
# if the tree has 0 node of the branches sizes are equal, returnthe empty string

def solution(arr)
    # Type your solution here 
    # tree without the first node
    array_without_the_first_node = arr[1].upto(arr.last).to_a
    first_branch = []
    second_branch = []
    negative_number = []

    # array_without_the_first_node.each_with_index do |b, index|
    #     if index.odd?
    #         b > 0 ? first_branch << b : negative_number << b
    #         # first_branch << index
    #     elsif index.even?
    #         b > 0 ? second_branch << b : negative_number << b
    #         # second_branch << index
    #     end
    # end 

    first_branch = array_without_the_first_node.values_at(* array_without_the_first_node.each_index.select {|i| i.even?})

    second_branch = array_without_the_first_node.values_at(* array_without_the_first_node.each_index.select {|i| i.odd?})

     return first_branch
    # return second_branch
    # return negative_number
end


puts "#{solution([3, 6, 2, 9, -1, 10])}"

