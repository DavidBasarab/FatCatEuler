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

end

