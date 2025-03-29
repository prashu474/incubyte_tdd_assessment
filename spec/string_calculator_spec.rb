require 'rspec'
require_relative '../lib/string_calculator'

describe StringCalculator do
  let(:calculator) { StringCalculator.new }

  describe "#add" do
    context "when input is empty" do
      it "returns 0" do
        expect(calculator.add("")).to eq(0)
      end
    end

    context "when input contains a single number" do
      it "returns the number itself" do
        expect(calculator.add("1")).to eq(1)
      end
    end

    context "when input contains multiple numbers" do
      it "returns the sum of two numbers" do
        expect(calculator.add("1,2")).to eq(3)
      end

      it "returns the sum of multiple numbers" do
        expect(calculator.add("1,2,3,4")).to eq(10)
      end
    end

    context "when using a custom delimiter" do
      it "supports a different delimiter defined in the input" do
        expect(calculator.add("//;\n1;2")).to eq(3)
      end
    end

    context "when input contains negative numbers" do
      it "raises an error listing the negative numbers" do
        expect { calculator.add("1,-2,3") }.to raise_error("negative numbers not allowed: -2")
      end

      it "raises an error with multiple negative numbers" do
        expect { calculator.add("-1,-2,-3") }.to raise_error("negative numbers not allowed: -1, -2, -3")
      end
    end
  end
end
