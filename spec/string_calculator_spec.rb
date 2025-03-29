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

      it "returns sum of multiple numbers" do
        calculator = StringCalculator.new
      expect(calculator.add("1,2,3,4")).to eq(10)
    end

      it "supports different delimiters" do
        calculator = StringCalculator.new
      expect(calculator.add("//;\n1;2")).to eq(3)
    end

      it "raises error for negative numbers" do
       calculator = StringCalculator.new
      expect { calculator.add("1,-2,3") }.to raise_error("negative numbers not allowed: -2")
    end

  end
end
