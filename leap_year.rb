#

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

def leap_year(num)
  if (num%4 == 0 && num%100 == 0) || (num%400 == 0)
    puts "Leap Year"
  else
    puts "Not A Leap Year"
  end
end

num = get_valid_input("Enter A Number: ")
result = leap_year(num)
puts "#{result}"
