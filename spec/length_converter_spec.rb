require "spec_helper"

describe LengthConverter do

  it "should convert 1 to 1 inch" do
    LengthConverter.convert(1).should == "1 inch"
  end

  it "should convert 2 to 2 inches" do
    LengthConverter.convert(2).should == "2 inches"
  end

  it "should convert 8 to 8 inches" do
    LengthConverter.convert(8).should == "8 inches"
  end
end