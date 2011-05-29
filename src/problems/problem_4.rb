class Problem4 < EulerProblem

  attr_accessor :digits


  def description
    "A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91  99.
    Find the largest palindrome made from the product of two 3-digit numbers."
  end

  def answer
    dromes = Array.new
    first_digit = stop_number
    while first_digit > start_number do
      second_digit = stop_number
      while second_digit > start_number do
        product = first_digit * second_digit
        dromes << product if product.palindromic?
        second_digit = second_digit - 1
      end
      first_digit = first_digit - 1
    end
    dromes = dromes.sort
    dromes.last
  end

  def stop_number
    10**@digits - 1
  end

  def start_number
    10**(@digits - 1)
  end

end