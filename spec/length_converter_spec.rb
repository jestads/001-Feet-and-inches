require "spec_helper"

describe LengthConverter do

  it "should convert inches to strings" do
    test_data = {
        1 => "1 inch",
        2 => "2 inches",
        12 => "1 foot",
        24 => "2 feet",
        13 => "1 foot, 1 inch",
        23 => "1 foot, 11 inches",
        40 => "3 feet, 4 inches",
        0.03125 => "1/32 inch"
    }
    test_data.each { |k, v|
      LengthConverter.convert(k).should == v
    }
  end

  context "inchify" do
    it "should convert 1 to 1 inch" do
      LengthConverter.inchify(1).should == "1 inch"
    end
    it "should convert x to x inches" do
      LengthConverter.inchify(3).should == "3 inches"
    end
  end

  context "feetify" do
    it "should convert 1 to 1 foot" do
      LengthConverter.feetify(1).should == "1 foot"
    end
    it "should convert x to x feet" do
      LengthConverter.feetify(3).should == "3 feet"
    end
  end
end