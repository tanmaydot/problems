# Write a program that calculates and prints the simple interest given the principal amount, rate of interest, and time.

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

def simple_interest_calculator
  principal_amount = get_valid_input("The initial amount of money: ")
  rate_of_interest = get_valid_input("The percentage of interest per time period: ")
  time = get_valid_input("The duration for which the money is borrowed or invested: ")

  simple_interest = principal_amount * rate_of_interest * time / 100
  puts "Over #{time} years of time with a percentage of #{rate_of_interest}% and the initial amount of #{principal_amount}"
  puts "The simple interest is #{simple_interest}"
end

simple_interest_calculator
