# Write a program that takes a number as input and prints whether it's a lucky number (sum of digits is 7).

def valid_number?(number)
  number.to_i.to_s == number
end

def get_valid_number(prompt)
  number = nil
  loop do
    print prompt
    number = gets.chomp
    break if valid_number?(number)

    puts "Invalid input. Please enter a valid number."
  end
  number.to_i
end

def lucky_number?(number)
  number.to_s.chars.map(&:to_i).sum == 7
end

def display_lucky_number_result(number)
  if lucky_number?(number)
    puts "#{number} is a lucky number!"
  else
    puts "#{number} is not a lucky number."
  end
end

number = get_valid_number("Enter a Number: ")
display_lucky_number_result(number)
