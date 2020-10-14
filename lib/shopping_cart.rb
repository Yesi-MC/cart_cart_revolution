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

  def total_number_of_products
    @products.sum do |product|
     product.quantity
   end
  end

  def is_full?
    if capacity.delete("items").to_i < total_number_of_products
      true
    else
      false
    end
  end
end
