class Problem4 < EulerProblem

  attr_accessor :digits


  def description
    "A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91  99.
    Find the largest palindrome made from the product of two 3-digit numbers."
  end

  def answer
    @dromics = Array.new
    initialize_first_digit
    get_all_palindrome_numbers
    get_highest_palindromic_number
  end

  def get_highest_palindromic_number
    @dromics = @dromics.sort
    @dromics.last
  end

  def get_all_palindrome_numbers
    while first_digit_valid do
      loop_through_possible_second_digits_and_add_to_array
      decrement_first_digit
    end
  end

  def initialize_first_digit
    @first_digit = stop_number
  end

  def first_digit_valid
    @first_digit > start_number
  end

  def decrement_first_digit
     @first_digit = @first_digit - 1
  end

  def loop_through_possible_second_digits_and_add_to_array
     initialize_second_digit
      while second_digit_valid do
        add_product_to_array_if_palindromic (@first_digit * @second_digit)
        decrement_second_digit
      end
  end

  def initialize_second_digit
    @second_digit = stop_number
  end

  def second_digit_valid
    @second_digit > start_number
  end

  def add_product_to_array_if_palindromic(product)
    @dromics << product if product.palindromic?
  end

  def decrement_second_digit
    @second_digit = @second_digit - 1
  end

  def stop_number
    10**@digits - 1
  end

  def start_number
    10**(@digits - 1)
  end

end