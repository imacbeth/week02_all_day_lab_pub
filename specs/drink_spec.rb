require("minitest/autorun")
require("minitest/rg")
require_relative("../drink.rb")

class DrinkTest < MiniTest::Test

  def setup
    @drink1 = Drink.new("Beer", 3, 20)
    @drink2 = Drink.new("Wine", 4, 30)
    @drink3 = Drink.new("Gin", 5, 50)
  end

  def test_drink_has_name
    assert_equal("Beer", @drink1.name)
  end

  def test_drink_has_price
    assert_equal(3, @drink1.price)
  end


end
