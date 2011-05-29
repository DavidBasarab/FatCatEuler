require "spec_helper"

describe Problem4 do

  before(:each)do
    @problem = Problem4.new
  end

  describe "it will solve Euler problem 4" do
    it "should respond to problem methods" do
      @problem.should respond_to(:description)
      @problem.should respond_to(:answer)
      @problem.should respond_to(:digits)
      @problem.should respond_to(:digits=)
    end

    it "will find the largest palindrome of 2 digits" do
      @problem.digits = 2
      @problem.answer.should == 9009
    end


  end

end