# Write a program to check if a given string is a palindrome.

def valid_choice?(choice)
  choice && choice.match?(/[1-2]/)
end

def get_valid_choice
  choice = nil
  until valid_choice?(choice)
    print "Choose an option (1 for single string, 2 for two strings): "
    choice = gets.chomp
    puts "Invalid choice. Please enter either 1 or 2." unless valid_choice?(choice)
  end
  choice.to_i
end

def valid_alphanumeric_string?(input)
  input && input.match?(/[a-z0-9]+/)
end

def get_valid_alphanumeric_string(prompt)
  input = nil
  until valid_alphanumeric_string?(input)
    print prompt
    input = gets.chomp.downcase
    puts "Invalid input. Please enter a valid alphanumeric string." unless valid_alphanumeric_string?(input)
  end
  input
end

def palindrome?(input)
  normalized_input = input.downcase.gsub(/[^a-z0-9]/, '')
  normalized_input == normalized_input.reverse
end

puts "Palindrome Checker"

loop do
  choice = get_valid_choice

  if choice == 1
    str = get_valid_alphanumeric_string("Enter a string: ")

    if palindrome?(str)
      puts "Yes, it's a palindrome!"
    else
      puts "No, it's not a palindrome!"
    end
    break
  elsif choice == 2
    str_a = get_valid_alphanumeric_string("Enter the first string: ")
    str_b = get_valid_alphanumeric_string("Enter the second string: ")

    if str_a.reverse == str_b
      puts "Yes, it's a palindrome!"
    else
      puts "No, it's not a palindrome!"
    end
    break
  end
end
