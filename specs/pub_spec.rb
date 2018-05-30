require("minitest/autorun")
require("minitest/rg")
require_relative("../drink.rb")
require_relative("../pub.rb")

class PubTest < MiniTest::Test

  def setup
    @drink1 = Drink.new("Beer", 3)
    @drink2 = Drink.new("Wine", 4)
    @drink3 = Drink.new("Gin", 5)

    @pub = Pub.new("Footlights", 100, [@drink1, @drink2, @drink3])
  end


end
