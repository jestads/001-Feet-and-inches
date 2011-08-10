class LengthConverter


  def self.convert decimal
    feet = (decimal/12).floor
    inches = (decimal % 12).floor
    fraction = (decimal.remainder(1) *32).floor

    out = ""
    out << feetify(feet)
    out << ", " unless feet == 0 || inches == 0
    out << inchify(inches)
    unless fraction ==0
      out << fraction.to_s + "/32 inch"
    end
    out
  end

  private
  def self.feetify(feet)
    if feet == 0
      ""
    elsif feet == 1
      "1 foot"
    elsif feet > 1
      "#{feet} feet"
    end
  end

  def self.inchify(inches)
    if inches == 0
      ""
    elsif inches == 1
      "1 inch"
    else
      "#{inches} inches"
    end
  end


end