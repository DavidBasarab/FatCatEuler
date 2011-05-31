require 'mathn'

class Integer

  def next_prime
    return 2 if self < 2
    prime_number = Prime.instance
    next_prime = 2
    prime_number.each { |x|
      next_prime = x
      break if next_prime > self
    }
    next_prime
  end

  def palindromic?
    number = self.to_s
    number == number.reverse
  end

  def multiples(max_value)
    count = 1
    next_value = self
    while next_value <= max_value
      yield next_value
      count = count + 1
      next_value =  count * self
    end
  end

end

