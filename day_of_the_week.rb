# Write a program that takes a number (1-7) as input and prints the corresponding day of the week.

def valid_number?(input)
  input.to_i.to_s == input && (1..7).cover?(input.to_i)
end

def get_valid_input(prompt)
  input = nil
  until valid_number?(input)
    print prompt
    input = gets.chomp
    puts "Invalid input. Please enter a valid number between 1 to 7." unless valid_number?(input)
  end
  input.to_i
end

def day_of_the_week(number)
  case number
  when 1
    "Monday"
  when 2
    "Tuesday"
  when 3
    "Wednesday"
  when 4
    "Thursday"
  when 5
    "Friday"
  when 6
    "Saturday"
  when 7
    "Sunday"
  else
    "Not A Valid Number To Determine Day Of The Week"
  end
end

days = get_valid_input("Enter A Number Of The Day: ")
result = day_of_the_week(days)
puts "The Day is #{result}"
