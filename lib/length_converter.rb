class LengthConverter
  def self.convert decimal_form
    if decimal_form == 1
      "1 inch"
    else
      "#{decimal_form} inches"
    end
  end
end