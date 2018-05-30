require("minitest/autorun")
require("minitest/rg")
require_relative("../drink.rb")
require_relative("../pub.rb")
require_relative("../customer.rb")

class CustomerTest < MiniTest::Test

  def setup
    @drink1 = Drink.new("Beer", 3, 20)
    @drink2 = Drink.new("Wine", 4, 30)
    @drink3 = Drink.new("Gin", 5, 50)

    @pub = Pub.new("Footlights", 100, [@drink1, @drink2, @drink3])

    @customer = Customer.new("Tony", 20, 33, 0)

  end

  def test_customer_has_name
    assert_equal("Tony", @customer.name)
  end

  def test_customer_buys_drink
    @customer.buys_drink(@drink1)
    assert_equal(17, @customer.wallet)
  end

  def test_customer_buys_drink_from_pub
    @customer.buys_drink_from_pub(@pub, @drink2)
    assert_equal(16, @customer.wallet)
    assert_equal(104, @pub.till)
  end

  def test_increase_drunkenness
    @customer.increase_drunkenness(@pub)
    assert_equal(100, @customer.drunkenness_level)
  end

end
