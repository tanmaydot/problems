#  Write a program to calculate the factorial of a given number.

def valid_number?(num)
  num && num.to_i.to_s == num
end

def get_valid_number(prompt)
  num = nil
  until valid_number?(num)
    print prompt
    num = gets.chomp
    puts "Invalid input. Please enter a valid number." unless valid_number?(num)
  end
  num.to_i
end

def factorial(num)
  if num == 0 || num == 1
    1
  else
    num * factorial(num - 1)
  end
end

num = get_valid_number("Enter a Number: ")
result = factorial(num)
puts "Factorial of #{num} is: #{result}"
