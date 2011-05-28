require 'prime'
require 'prime_helper'

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
    @current_number = @number
    @factors = Array.new
    @current_factor = 0
    find_factors
    @factors
  end

  def find_factors
    increment_current_factor
    add_factors_for_current_number
    find_factors if factoring_not_complete
  end

  def factoring_not_complete
    @current_number > @current_factor
  end

  def factor_of_current_number
    @current_number % @current_factor == 0
  end

  def get_next_current_number
    @current_number = @current_number / @current_factor
  end

  def increment_current_factor
    @current_factor = @current_factor.next_prime
  end

  def add_factors_for_current_number
    while factor_of_current_number
        @factors << @current_factor
        get_next_current_number
    end
  end

end