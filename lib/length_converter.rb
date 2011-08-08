class InvalidLengthError < RuntimeError
end


class LengthConverter
  def self.convert decimal_form
    raise InvalidLengthError if decimal_form < 0
    if decimal_form == 1
      "1 inch"
    elsif decimal_form == 0 || (decimal_form > 1 && decimal_form < 12)
      "#{decimal_form} inches"
    elsif decimal_form == 12
      "1 foot"
    elsif decimal_form > 12
      "#{decimal_form/12} feet"
    end
  end
end