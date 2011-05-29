require "spec_helper"

describe Integer do

  before(:each) do
    @helper = 9
  end

  it "should respond to problem methods" do
    @helper.should respond_to(:palindromic?)
  end

  it "will say all numbers less than 10 are palindromic" do
    (1...10).each { |n|
      n.palindromic?.should == true
    }
  end

  it "will be able to determine if a number is palindromic if less than 100" do
    22.palindromic?.should == true
    44.palindromic?.should == true
    71.palindromic?.should == false
  end

  it "will be able to determine if a number is palindromic if less than 1000" do
    757.palindromic?.should == true
    626.palindromic?.should == true
    741.palindromic?.should == false
    965.palindromic?.should == false
  end

  it "will be able to determine if any number is palindromic" do
    8813200023188.palindromic?.should == true
    9339.palindromic?.should == true
    79497.palindromic?.should == true
    7415694.palindromic?.should == false
    8521409.palindromic?.should == false
    85.palindromic?.should == false
    852011974198.palindromic?.should == false
  end

end