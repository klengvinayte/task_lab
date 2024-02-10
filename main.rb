require_relative 'lib/checkout'
require_relative 'lib/input'

puts "Hello! Please enter the product codes: CC WA PC"

input = Input.new
input_hash = input.input_products(input.user_input)

checkout = Checkout.new(input_hash)
checkout.total_price

puts "Total price is $#{checkout.total_price}"
