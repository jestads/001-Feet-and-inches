class Distance
  def self.convert inch_mesure
    foot_count = inch_mesure / 12
    inch_count = inch_mesure % 12
    foot_display = footify(foot_count)
    result = ""
    result += "#{foot_display}" if(foot_count == 1)
    if (inch_count != 0)
      result += "#{inch_count} #{inchify(inch_count)}"
    end
    result
  end

  def self.inchify(inch)
    if inch > 1
      "inches"
    else
      "inch"
    end
  end

  def self.footify(foot_count)
    "#{foot_count} foot"
  end
end