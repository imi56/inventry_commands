require_relative './insert'
require_relative './update'
require_relative './delete'
require_relative './search'

=begin
  Since more inventory operations will be added in the future,
  it wont be manageble if we keep implementing in here only
=end

class Inventory  
  # In context to this task where set of commands are already defined, it makes sense to avoid 
  # multiple R/W operation to output CSV file and create file once all commands are processed.
  
  attr_accessor :result, :stock

  def initialize
    self.result = []
    self.stock = []
  end

  def insert(id, name, price) 
    self.stock << Insert.new.insert_product(id, name, price)
    print_result
  end

  def delete(id, *rest) 
    Delete.new.delete_product(self.stock, id)
    print_result
  end

  def update(id, name, price)
    Update.new.update_product(self.stock, id, name, price)
    print_result
  end

  def search(id, name, price)
    search_result = Search.new.search_products(self.stock, id, name, price)
    self.result = self.stock
    search_result.each do |r|
      self.result << r
    end
    print_result
  end

  def print_result
    self.result.each {|r| puts r.join(', ') }
    puts
  end

end
