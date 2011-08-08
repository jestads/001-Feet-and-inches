require "spec_helper"

describe LengthConverter do

  it "should convert 1 to 1 inch" do
    LengthConverter.convert(1).should == "1 inch"
  end

  it "should pluralize a converted number of inches" do
    [0,2,8].each do |n|
      LengthConverter.convert(n).should == "#{n} inches"
    end
  end

  it "should rise an exception on negative parameter" do
    lambda{LengthConverter.convert(-1)}.should raise_error InvalidLengthError
  end

  it "should return 1 foot for 12 inches" do
    LengthConverter.convert(12).should == "1 foot"
  end

  it "should pluralize multiple feet" do
    LengthConverter.convert(24).should == "2 feet"
  end
end