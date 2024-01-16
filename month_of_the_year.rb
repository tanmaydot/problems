# Write a program that takes a number (1-12) as input and prints the corresponding month name.

def valid_number?(input)
  input.to_i.to_s == input && (1..12).cover?(input.to_i)
end

def get_valid_input(prompt)
  input = nil
  until valid_number?(input)
    print prompt
    input = gets.chomp
    puts "Invalid input. Please enter a valid number between 1 to 12." unless valid_number?(input)
  end
  input.to_i
end

def month_of_the_year(number)
  case number
  when 1
    "January"
  when 2
    "Febuary"
  when 3
    "March"
  when 4
    "April"
  when 5
    "May"
  when 6
    "June"
  when 7
    "July"
  when 8
    "August"
  when 9
    "September"
  when 10
    "October"
  when 11
    "November"
  when 12
    "December"
  else
    "Not A Valid Number To Determine Month"
  end
end

month = get_valid_input("Enter A Number Of The Day: ")
result = month_of_the_year(month)
puts "The Month is #{result}"
