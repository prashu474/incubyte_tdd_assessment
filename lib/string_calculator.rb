class StringCalculator
	def add(numbers)
	  return 0 if numbers.empty?
	  return numbers.to_i if numbers.match?(/^\d+$/)
  
	  delimiter, numbers = extract_delimiter(numbers)
  
	  num_array = numbers.split(/#{delimiter}|\n/).map(&:to_i)
	  validate_negatives(num_array)
  
	  num_array.sum
	end
  
	private
  
	def extract_delimiter(numbers)
	  if numbers.start_with?("//")
		parts = numbers.split("\n", 2)
		[Regexp.escape(parts.first[2..]), parts.last]
	  else
		[",", numbers]
	  end
	end
  
	def validate_negatives(num_array)
	  negatives = num_array.select(&:negative?)
	  raise "negative numbers not allowed: #{negatives.join(', ')}" unless negatives.empty?
	end
  end
  
