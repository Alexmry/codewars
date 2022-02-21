def scramble(s1,s2)
  #your code here
  a1 = s1.split("")
  a2 = s2.split("")
    array = []
  a2.each do |letter|
    if a1.include?letter
        array << letter
    end
  end

  if array = a1
    return true
  else 
    false
    end
# s2.chars.uniq.all?{|x| s2.count(x)<=s1.count(x)}
end

puts "#{scramble('rkqodlw', 'world')}"
# scramble('rkqodlw', 'world') ==> True
# scramble('cedewaraaossoqqyt', 'codewars') ==> True
# scramble('katas', 'steak') ==> False



# The all?() of enumerable is an inbuilt method in Ruby returns a boolean value true if all the objects in the enumerable satisfies the given condition, else it returns false. If a pattern is given, it compares with the pattern, and returns true if all of them are equal to the given pattern, else it returns false.


# ary = [1, 2, 4, 2]
# ary.count                  #=> 4
# ary.count(2)               #=> 2