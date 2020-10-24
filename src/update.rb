class Update
  def update_product(stock, id, name, price)
    puts "Updating product: #{id}"
    stock.collect! { |i| (i[0] == id) ? [id, name, price] : i}
  end
end
