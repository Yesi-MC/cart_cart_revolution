require 'minitest/autorun'
require 'minitest/pride'
require './lib/product'
require './lib/shopping_cart'

class ShoppingCartTest < MiniTest::Test
  def test_it_exists
    cart = ShoppingCart.new("King Soopers", "30items")

    assert_instance_of ShoppingCart, cart
  end

  def test_it_has_attributes
    cart = ShoppingCart.new("King Soopers", "30items")

    assert_equal "King Soopers", cart.name
    assert_equal "30items", cart.capacity
  end

  def test_it_knows_products
    cart = ShoppingCart.new("King Soopers", "30items")

    assert_equal [], cart.products
  end

end