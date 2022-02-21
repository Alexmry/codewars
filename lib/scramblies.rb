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

  return array

end

puts "#{scramble('rkqodlw', 'world')}"
# scramble('rkqodlw', 'world') ==> True
# scramble('cedewaraaossoqqyt', 'codewars') ==> True
# scramble('katas', 'steak') ==> False