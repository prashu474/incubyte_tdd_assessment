require 'rspec'
require_relative '../lib/string_calculator'

describe StringCalculator do
  describe "#add" do
    it "returns 0 for an empty string" do
      calculator = StringCalculator.new
      expect(calculator.add("")).to eq(0)
    end

    it "returns the number itself when a single number is provided" do
    	calculator = StringCalculator.new
      expect(calculator.add("1")).to eq(1)
    end

		it "returns sum of two numbers" do
      calculator = StringCalculator.new
      expect(calculator.add("1,2")).to eq(3)
    end
		
  end
end