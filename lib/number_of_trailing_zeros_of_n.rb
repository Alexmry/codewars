def zeros(n)

    # factorial_of_n = (1..n).to_a.inject(:*)

    i, ans = 5, 0
    while n/i > 0
        ans += n/i
        i *= 5
    end
    ans
  
end