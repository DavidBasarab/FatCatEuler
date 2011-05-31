require "spec_helper"

describe Integer do

  it "should respond to multiples method" do
     9.should respond_to(:multiples)
  end

  it "will accept a block for the number of multiples return starting with itself to a max value" do
    multiples = Array.new
    2.multiples(10) { |x| multiples << x }
    multiples.should == [2, 4, 6, 8, 10]
  end

end