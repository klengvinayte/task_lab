class Input
  def initialize
    @product_hash = {}
  end

  def user_input
    input = gets.chomp.split(" ")
    unless input.include?("CC") || input.include?("WA") || input.include?("PC")
      puts "Invalid input, please try again with valid product codes: CC WA PC."
    end
    input
  end

  def input_products(user_input)
    user_input.each do |product|
      if @product_hash[product]
        @product_hash[product] += 1
      else
        @product_hash[product] = 1
      end
    end
    @product_hash
  end
end
