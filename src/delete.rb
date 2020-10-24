class Delete
  def delete_product(stock, id)
    puts "Deleting: #{id}"
    stock.delete_if { |i| (i[0] == id)}
  end
end