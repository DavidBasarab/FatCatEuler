require "spec_helper"

describe Problem4 do

  before(:each)do
    @problem = Problem4.new
  end

  describe "it will solve Euler problem 4" do
    it "should respond to problem methods" do
      @problem.should respond_to(:description)
      @problem.should respond_to(:answer)
      @problem.should respond_to(:number)
      @problem.should respond_to(:number=)
    end

  end

end