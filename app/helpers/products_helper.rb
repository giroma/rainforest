module ProductsHelper
  def price_in_dollars(price)
  price_in_dollars = price.to_f / 100
  sprintf("$%.2f", price_in_dollars)
  end
end
