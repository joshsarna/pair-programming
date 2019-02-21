input = ""
students = []

while input != "q"
  p "Enter a name, or enter 'q' to make groups"
  input = gets.chomp
  if input != "q"
    students << input
  end
end

number_of_groups = students.length / 2

groups = []
number_of_groups.times do
  group_members = []
  2.times do
    random_student = rand(students.length)
    group_members << students[random_student]
    students.delete(students[random_student])
  end
  groups << group_members  
end

if students.length == 1
  groups[rand(groups.length)] << students[0]
end

groups.each_with_index do |group, i|
  list_of_members = group.to_s # => "[\"name1\", \"name2\", ...]"
  # get rid of unnecessary characters
  list_of_members.delete!('[')
  list_of_members.delete!(']')
  list_of_members.delete!('"')
  p "Group #{i + 1}: #{list_of_members}"
end