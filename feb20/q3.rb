users = []
i = 1
5.times do
  p "Please enter User #{i}'s' first name:"
  first_name = gets.chomp
  p "Please enter User #{i}'s' last name:"
  last_name = gets.chomp
  p "Please enter User #{i}'s' email:"
  email = gets.chomp
  account_number = ""
  10.times do
    account_number << rand(10).to_s # a random number 0 through 9
  end
  users << {first_name: first_name, last_name: last_name, email: email, account_number: account_number}
  i += 1
end

users.each do |user|
  p "FIRST NAME: #{user[:first_name]}"
  p "LAST NAME: #{user[:last_name]}"
  p "EMAIL: #{user[:email]}"
  p "ACC #: #{user[:account_number]}"
  p "-" * 50
end