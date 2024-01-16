# Write a program that takes two numbers as input and prints whether the first number is divisible by the second number

def valid_input?(input)
  input && input.to_i.to_s == input
end

def get_valid_input(prompt)
  input = nil
  until valid_input?(input)
    print prompt
    input = gets.chomp
    puts "Invalid input. Please enter a valid number." unless valid_input?(input)
  end
  input.to_i
end

num1 = get_valid_input("Enter First Number: ")
num2 = get_valid_input("Enter Second Number: ")

if num2 != 0
  if (num1 % num2).zero?
    puts "#{num1} is divisible by #{num2}"
  else
    puts "#{num1} is not divisible by #{num2}"
  end
else
  puts "Cannot divide by zero. Please enter a non-zero second number."
end
