class Search
  def search_products(stock, id, name, price)
    puts "Searching: #{id}, #{name}, #{price}"
    return [] if id.nil? && name.nil? && price.nil?
    stock.select{|(i, n, p)| (i == id || id.nil? ) && (n == name || name.nil? ) && (p == price || price.nil? )}
  end
end