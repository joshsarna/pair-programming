users = []
i = 1
5.times do
  p "Please enter User #{i}'s' first name:"
  first_name = gets.chomp
  p "Please enter User #{i}'s' last name:"
  last_name = gets.chomp
  p "Please enter User #{i}'s' email:"

  email_valid = false
  while !email_valid
    email = gets.chomp
    if !email.include?("@")
      p "Email must contain an @ symbol."
    elsif email[-4..-1] != ".com"
      p "Email must end in '.com'"
    else
      email_valid = true
    end
  end
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

p "Enter account number to log in:"
input_account_number = gets.chomp
user_found = false
users.each do |user|
  if user[:account_number] == input_account_number
    p "FIRST NAME: #{user[:first_name]}"
    p "LAST NAME: #{user[:last_name]}"
    p "EMAIL: #{user[:email]}"
    user_found = true
  end
end

if !user_found
  p "Invalid login credentials!"
end