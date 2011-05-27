require "spec_helper"

describe Problem3 do

  before(:each)do
    @problem = Problem3.new
  end

  describe "will find the prime factors of a number" do
    it "should respond to problem methods" do
      @problem.should respond_to(:description)
      @problem.should respond_to(:answer)
      @problem.should respond_to(:factors)
      @problem.should respond_to(:number)
    end

    it "will find all the prime factors numbers for 18" do
      @problem.number = 18
      @problem.factors.should == [2, 3, 3]
    end

    it "will find all the prime factors for 21" do
      @problem.number = 21
      @problem.factors.should == [3, 7]
    end

    it "will find all the prime factors for 13195 " do
      @problem.number = 13195
      @problem.factors.should == [5, 7, 13, 29]
    end
  end

  describe "largest prime factor" do
    it "will respond to" do
      @problem.should respond_to(:answer)
    end

    it "will return 7 for largest prime factor of 21" do
      @problem.number = 21
      @problem.answer.should == 7
    end

    it "will return 3 for largest prime factor of 18" do
      @problem.number = 18
      @problem.answer.should == 3
    end

    it "will return 13195 for largest prime factor of 29" do
      @problem.number = 13195
      @problem.answer.should == 29
    end
  end


end