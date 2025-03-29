class StringCalculator
    
	def add(numbers)
    return 0 if numbers.empty?
    return numbers.to_i if numbers.match(/^\d+$/)
    delimiter = numbers.start_with?("//") ? numbers[2] : /[,]/
    numbers = numbers.split("\n").last if numbers.start_with?("//")
    numbers.split(delimiter).map(&:to_i).sum
  end

end
	
