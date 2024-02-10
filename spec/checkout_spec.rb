require_relative '../lib/checkout'

RSpec.describe Checkout do
describe "#total_price" do
    it "returns total price of products" do
      checkout = Checkout.new({ "CC" => 2, "WA" => 1, "PC" => 3 })
      expect(checkout.total_price).to eq(7.15)
    end
  end
end
