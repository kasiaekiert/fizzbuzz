# 1..n
# 1, 2, Fizz, 4, Buzz, 6, 7, 8,.., 14, FizzBuzz
# %3 -> Fizz
# %5 -> Buzz
# %15 -> FizzBuzz

# 1, 2, Fizz, ..., 100
module FizzBuzz
class Element
    def initialize(number)
        @number = number
    end
    
    def call
      raise ArgumentError unless @number.is_a?(Numeric)

      return 'FizzBuzz' if @number % 15 == 0
      return 'Fizz' if @number % 3 == 0
      return 'Buzz' if @number % 5 == 0
      
      @number
    end
end
end
