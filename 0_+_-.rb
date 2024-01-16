# Write a program that takes a number as input and prints whether it's positive, negative, or zero.

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

num = get_valid_number("Enter a Number: ")

if num == 0
  puts "0 is neither positive nor negative"
elsif num > 0
  puts "Positive Number"
else
  puts "Negative Number"
end
