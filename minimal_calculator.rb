# Create a minimal calculator that can perform basic operations (addition, subtraction, multiplication, division).

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
  input.to_f
end

def valid_operation?(operation)
  %w(+ - * /).include?(operation)
end

def get_valid_operation(prompt)
  operation = nil
  until valid_operation?(operation)
    print prompt
    operation = gets.chomp
    puts "Invalid operation. Please enter a valid operation (+, -, *, /)." unless valid_operation?(operation)
  end
  operation
end
def calculator(num1, num2, operation)
  case operation
  when "+"
    result = num1 + num2
    puts "Your Result is #{result}"
  when "-"
    result = num1 - num2
    puts "Your Result is #{result}"
  when "*"
    result = num1 * num2
    puts "Your Result is #{result}"
  when "/"
    if num2.zero?
      puts "Error: Division by zero"
    else
      result = num1 / num2
      puts "Your Result is #{result}"
    end
  else
    puts "Not a valid operation"
  end
end

num1 = get_valid_input("Enter First Number: ")
num2 = get_valid_input("Enter Second Number: ")
operation = get_valid_operation("Enter Operation (+, -, *, /): ")

calculator(num1, num2, operation)
