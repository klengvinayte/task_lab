require_relative '../lib/input'

RSpec.describe Input do
  describe "#user_input" do
    describe "when user input is valid" do
      it "returns user input" do
        input = Input.new
        allow(input).to receive(:gets).and_return("CC WA PC")
        expect(input.user_input).to eq(["CC", "WA", "PC"])
      end
    end

    describe "when user input is invalid" do
      it "outputs error message" do
        input = Input.new
        allow(input).to receive(:gets).and_return("Invalid input\n")
        expect { input.user_input }.to output(/Invalid input/).to_stdout
      end
    end
  end

  describe "#input_products" do
    it "returns hash with products and their count" do
      input = Input.new
      products = ["CC", "WA", "PC", "CC"]
      expected_output = {"CC" => 2, "WA" => 1, "PC" => 1}
      expect(input.input_products(products)).to eq(expected_output)
    end
  end
end
