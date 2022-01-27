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
end