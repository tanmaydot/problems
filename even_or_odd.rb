# Write a program that takes a number as input and prints whether it's even or odd.

def valid_number?(number)
  number.to_i.to_s == number
end

def get_valid_number(prompt)
  loop do
    print prompt
    number = gets.chomp
    return number.to_i if valid_number?(number)

    puts "Invalid input. Please enter a valid number."
  end
end

def even_or_odd(number)
  if number.even?
    puts "Number Is A Even Number"
  elsif number.odd?
    puts "Number Is A Odd Number"
  end
end

# In mathematics, zero is an even number. This is because zero is an integer multiple of 2. Some say that zero is neither even nor odd, but a non-quantity. ~ WIKIPEDIA
# Hence I have kept it as even here since ruby consider it a even number.

number = get_valid_number("Enter a Number: ")
puts even_or_odd(number)
