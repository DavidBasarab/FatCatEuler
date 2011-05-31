class Problem5 < EulerProblem
  attr_accessor :top_range

  def description
      "2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?"
  end

  def answer
    @top_range.multiples(max_possible_value) { |number|
      return number if evenly_divisible(number)
    }
  end

  def max_possible_value
    max_value = 1
    2.upto(@top_range).each { |x|
      max_value = x * max_value
    }
    max_value
  end

  def evenly_divisible(number)
     2.upto(@top_range).each { |x|
      return false if number % x != 0
     }
    true
  end

end