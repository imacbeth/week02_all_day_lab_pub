class Customer

  attr_reader :name, :wallet, :age, :drunkenness_level

  def initialize(name, wallet, age, drunkenness_level)
    @name = name
    @wallet = wallet
    @age = age
    @drunkenness_level = drunkenness_level
  end

  def buys_drink(drink)
    price = drink.price
    @wallet -= price
    @drunkenness_level += drink.alcohol_level
  end



end
