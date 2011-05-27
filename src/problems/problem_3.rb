require 'prime'

class Problem3 < EulerProblem
  attr_accessor :number

  def answer
    factors.last
  end

  def description
    "The prime factors of 13195 are 5, 7, 13 and 29.
What is the largest prime factor of the number 600851475143 ?"
  end

  def factors
    current_number = @number
    factors = Array.new
    primes_for_number.each { |n|
      begin
        if current_number % n == 0
          factors << n
          current_number = current_number / n
        end
      end while current_number % n == 0
    }
    factors
  end

  def primes_for_number
    primes = Array.new
    Prime.each(@number) {|n|
      primes << n
    }
    primes
  end

end