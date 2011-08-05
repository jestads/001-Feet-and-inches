require_relative 'helper'

class TestDistance < Test::Unit::TestCase
  should "return the distance in inch" do
    assert_equal "1 inch", Distance.convert(1)
  end

  should "return the distance in inches" do
    assert_equal "2 inches", Distance.convert(2)
    end

  should "return the distance in feet" do
    assert_equal "1 foot", Distance.convert(12)
  end



end
