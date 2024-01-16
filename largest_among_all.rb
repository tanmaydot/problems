# Largest Among Three Numbers

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
num3 = get_valid_input("Enter Third Number: ")

num = [num1, num2, num3]
puts "Largest Number: #{num.max}"
