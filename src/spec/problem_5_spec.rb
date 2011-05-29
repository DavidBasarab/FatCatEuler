require "spec_helper"

describe Problem5 do

  before(:each)do
    @problem = Problem5.new
  end

  describe "it will solve Euler problem 5" do

    it "should respond to problem methods" do
      @problem.should respond_to(:description)
      @problem.should respond_to(:answer)
    end

  end
end