# Write a program that takes a student's score as input and prints their grade based on the following criteria: 90-100: A, 80-89: B , 70-79: C , 60-69: D, Below 60: F

def valid_percentage?(input)
  input.to_i.to_s == input && (0..100).cover?(input.to_i)
end

def get_valid_input(prompt)
  input = nil
  until valid_percentage?(input)
    print prompt
    input = gets.chomp
    puts "Invalid input. Please enter a valid percentage between 0 and 100." unless valid_percentage?(input)
  end
  input.to_i
end

def determine_grade(percentage)
  case percentage
  when 0..59
    "F"
  when 60..69
    "D"
  when 70..79
    "C"
  when 80..89
    "B"
  when 90..100
    "A"
  else
    "Not A Valid Grade Percentage"
  end
end

grade = get_valid_input("Enter your percentage to know your grade: ")
result = determine_grade(grade)
puts "Your Grade: #{result}"
