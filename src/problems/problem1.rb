class Problem1 < EulerProblem

  def description
    "If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
Find the sum of all the multiples of 3 or 5 below 1000."
  end

  def answer
    sum = 0
    (1..999).each do |number|
      if multiple_of_3_or_5(number)
        sum += number
      end
    end
    sum
  end

  def multiple_of_3_or_5 (number)
    if (number % 3) == 0
      return true
    end
    if (number % 5) == 0
      return true
    end
    false
  end

end
