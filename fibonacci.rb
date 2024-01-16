# Generate and print the first \(n\) terms of the Fibonacci sequence.

def fibonacci(n)
  fib_sequence = [0, 1]

  (2...n).each do |i|
    fib_sequence[i] = fib_sequence[i - 1] + fib_sequence[i - 2]
  end

  fib_sequence
end

print "Enter the number of terms for the Fibonacci sequence: "
num = gets.chomp.to_i

if num <= 0
  puts "Please enter a positive integer."
else
  result = fibonacci(num)
  puts "The first #{num} terms of the Fibonacci sequence are: #{result.join(', ')}"
end
