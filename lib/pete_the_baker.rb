def cakes(recipe, available)
  #your code here
  cake_number = []
  # for each element if the recipe hash
  recipe.each do |ke, value|
    if available.key?(ke)
        cake = available[ke] / value
       cake_number << cake
    else
       cake_number << 0 
    end
  end
  # check if key? is true in available hash?
  # if it's true, compare the quantity
  # for the ingredient with the loweest quantity => return modulo

  return cake_number.sort.first.to_i
end


# must return 2
puts "#{cakes({flour: 500, sugar: 200, eggs: 1}, {flour: 1200, sugar: 1200, eggs: 5, milk: 200})}"; 
# must return 0
# cakes({apples: 3, flour: 300, sugar: 150, milk: 100, oil: 100}, {sugar: 500, flour: 2000, milk: 2000});