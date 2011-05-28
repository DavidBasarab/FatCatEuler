require "spec_helper"

describe Integer do

  before(:each) do
    @helper = 9
  end

  describe "determine if a number is prime" do
    it "will have expose a methods" do
       @helper.should respond_to(:next_prime)
    end
    it "will find the next prime after 5" do
       5.next_prime.should == 7
    end
    it "will find the next prime after 32" do
       32.next_prime.should == 37
    end
    it "will return 2 for prime numbers less than 2" do
      0.next_prime.should == 2
      1.next_prime.should == 2
      2.next_prime.should == 3
    end
  end

end