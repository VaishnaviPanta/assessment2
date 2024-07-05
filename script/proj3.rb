factorial = ->(n) {
  (1..n).reduce(1, :*)
}
number = 5
result = factorial.call(number)
puts "Factorial of #{number} = #{result}"
