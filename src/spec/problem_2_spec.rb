require "spec_helper"

describe Problem2 do

  before(:each)do
    @problem = Problem2.new
  end

  describe "finding the fibonacci numbers" do
    it "will find the array of the first 10 fibonacci sequence" do
      @problem.terms = 10
      @problem.sequence.should == [1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
    end
    
    it "will find the array of the first 5 fibonacci sequence" do
      @problem.terms = 5
      @problem.sequence.should == [1, 2, 3, 5, 8]
    end
  end

  describe "can find even fibonacci numbers" do
    it "it will find the even numbers of the first 10 fibonacci sequence" do
      @problem.terms = 10
      @problem.even_sequence.should == [2, 8, 34]
    end

    it "it will find the even numbers of the first 5 fibonacci sequence" do
      @problem.terms = 5
      @problem.even_sequence.should == [2, 8]
    end
  end

  describe "total of even numbers under a value" do
    it "will find the total of even fibonacci under 100" do
      @problem.max_value = 100
      @problem.answer.should == 44
    end
    it "will find the total of even fibonacci under 700" do
      @problem.max_value = 700
      @problem.answer.should == 798
    end

     it "will find the total of even fibonacci under 15000" do
      @problem.max_value = 15000
      @problem.answer.should == 14328
    end

  end

end