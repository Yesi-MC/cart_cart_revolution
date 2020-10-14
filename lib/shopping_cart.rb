class ShoppingCart

  attr_reader :name, :capacity, :products
  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @products = []
  end

  def add_product(product)
    @products << product
  end

  def details
    store_details = {}
    store_details[:name] = name
    store_details[:capacity] = capacity.delete("items").to_i
    store_details
  end
end
