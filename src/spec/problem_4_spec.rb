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
      @problem.should respond_to(:palindromic?)
    end

    it "will be able to determine if a number is palindromic if less than 100" do
      @problem.number =  22
      @problem.palindromic?.should == true
      @problem.number =  44
      @problem.palindromic?.should == true
      @problem.number =  71
      @problem.palindromic?.should == false
    end

#    it "will be able to determine if a number is palindromic if less than 1000"  do
#      @problem.number =  101
#      @problem.palindromic?.should == true
#      @problem.number =  171
#      @problem.palindromic?.should == false
#      @problem.number =  191
#      @problem.palindromic?.should == true
#      @problem.number =  848
#      @problem.palindromic?.should == true
#      @problem.number =  874
#      @problem.palindromic?.should == false
#    end

  end

end