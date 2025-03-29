class StringCalculator
    
  def add(numbers)
    return 0 if numbers.empty?
    return numbers.to_i if numbers.match(/^\d+$/)
    delimiter = numbers.start_with?("//") ? numbers[2] : /[,]/
    numbers = numbers.split("\n").last if numbers.start_with?("//")
    num_array = numbers.split(delimiter).map(&:to_i)
    negatives = num_array.select { |num| num < 0 }
    raise "negative numbers not allowed: #{negatives.join(', ')}" unless negatives.empty?
	num_array.sum
     end
  end

end
	
