class Insert
  def insert_product(id, name, price)
    puts "Inserting: #{id}, #{name}, #{price}"
    [id, name, price]
  end
end