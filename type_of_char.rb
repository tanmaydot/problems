# Write a program that takes a character as input and prints whether it's a vowel, consonant, or neither.

def valid_char(char)
  char && char.match?(/[a-z]/)
end

def get_valid_char(prompt)
  char = nil
  until valid_char(char)
    print prompt
    char = gets.chomp.downcase
    puts "Invalid input. Please enter a valid alphabetic character." unless valid_char(char)
  end
  char
end

char = get_valid_char("Enter a character: ")
puts "You entered: #{char}"

if char.match?(/[aeiou]/)
  puts "#{char} is a vowel"
elsif char == "y"
  puts "#{char} is sometimes a vowel, sometimes a consonant"
else
  puts "#{char} is a consonant"
end
