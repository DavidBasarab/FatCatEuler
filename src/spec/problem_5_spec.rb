require "spec_helper"

describe Problem5 do

  before(:each)do
    @problem = Problem5.new
  end

  describe "it will solve Euler problem 5" do

    it "should respond to problem methods" do
      @problem.should respond_to(:description)
      @problem.should respond_to(:answer)
      @problem.should respond_to(:top_range)
    end

    it "will find the smallest numbers divided from 1 to 10 without a remainder" do
      @problem.top_range = 10
      @problem.answer.should == 2520
    end

  end
end