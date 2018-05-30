require("minitest/autorun")
require("minitest/rg")
require_relative("../drink.rb")
require_relative("../pub.rb")
require_relative("../customer.rb")

class PubTest < MiniTest::Test

  def setup
    @drink1 = Drink.new("Beer", 3, 20)
    @drink2 = Drink.new("Wine", 4, 30)
    @drink3 = Drink.new("Gin", 5, 50)

    @pub = Pub.new("Footlights", 100, [@drink1, @drink2, @drink3])

    @customer = Customer.new("Tony", 20, 33, 0)
  end

  def test_pub_has_name
    assert_equal("Footlights", @pub.name)
  end

  def test_pub_has_till
    assert_equal(100, @pub.till)
  end

  def test_pub_has_drinks
    assert_equal([@drink1, @drink2, @drink3], @pub.drinks)
    assert_equal(3, @pub.drinks.length)
  end

  def test_pub_can_sell_one_drink
     drink = @pub.one_drink_sold
    assert_equal(@drink3.name, drink.name)
  end

  def test_increase_money_in_till
    @pub.increase_money_in_till(@drink1)
    assert_equal(103, @pub.till)
  end

  def test_customer_is_over_18?
    assert_equal(true, @pub.is_over_18?(@customer.age))
  end



end
