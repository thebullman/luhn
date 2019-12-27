module Luhn
  def self.is_valid?(number)
    ##step 1 - break down card into digits
    digits = number.to_s.split(//).reverse
    sum = 0

    digits.each_with_index do |d, index|
      d = d.to_i
      if index % 2 != 0
        d = d * 2     
        if d >= 10
          d = d - 9
        end
      end
     sum += d
    end
    #implicitly returns
    sum % 10 == 0
  end
end