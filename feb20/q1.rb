favorite_foods = []

5.times do
  p "Please enter your favorite food:"
  favorite_food = gets.chomp
  favorite_foods << favorite_food
end

# i = 1
# favorite_foods.each do |food|
#   p "#{i}. I love #{food}"
#   i = i + 1
# end

favorite_foods.each_with_index do |favorite_food, i|
  p "#{i + 1}. #{favorite_food}"
end