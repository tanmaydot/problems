#  Write a program to check if a given number is prime.

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

def is_prime?(num)
  return false if num < 2

  (2..Math.sqrt(num).to_i).each do |i|
    return false if (num % i).zero?
  end

  true
end

num = get_valid_number("Enter a Number: ")

if is_prime?(num)
  puts "#{num} is a prime number."
else
  puts "#{num} is not a prime number."
end
