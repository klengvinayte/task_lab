class Checkout
  def initialize(product_hash)
    @product_hash = product_hash
  end

  def CC_ckecout(count)
    if count > 1
      return count * 1.50 - 1.50
    else
      1.50
    end
  end

  def WA_checkout(count)
    count * 0.85
  end

  def PC_checkout(count)
    if count >= 3
      return count * (2.00 * 0.8)
    else
      count * 2.00
    end
  end

  def total_price
    total = 0
    @product_hash.each do |product, count|
      case product
      when "CC"
        total += CC_ckecout(count)
      when "WA"
        total += WA_checkout(count)
      when "PC"
        total += PC_checkout(count)
      end
    end
    total
  end
end
