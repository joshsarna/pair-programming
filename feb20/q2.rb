count = 0
11.times do
  p count
  count += 1
end

# conditionals

result1 = true
result2 = "hello"

if result1 == true
  p "test one passes" # this code runs
end

if result1
  p "test one passes" # this code runs
end

if result2 == true
  p "test one passes" # this code doesn't run
end

if result2
  p "test one passes" # this code runs
end