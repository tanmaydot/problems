# Write a program to find the GCD of two numbers.

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

def greatest_common_divisor(num1, num2)
  while num2 != 0
    temp = num2
    num2 = num1 % num2
    num1 = temp
  end

  num1
end

num1 = get_valid_input("Enter First Number: ")
num2 = get_valid_input("Enter Second Number: ")

result = greatest_common_divisor(num1, num2)
puts "The greatest common divisor of #{num1} and #{num2} is: #{result}"
