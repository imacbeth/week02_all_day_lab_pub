class Customer

  attr_reader :name, :wallet, :age, :drunkenness_level

  def initialize(name, wallet, age, drunkenness_level)
    @name = name
    @wallet = wallet
    @age = age
    @drunkenness_level = drunkenness_level
    @drinks_drunk = []
  end

  def buys_drink(drink)
    price = drink.price
    @wallet -= price
  end

  def buys_drink_from_pub(pub, drink)
    buys_drink(drink)
    pub.increase_money_in_till(drink)
  end

  def increase_drunkenness(pub)
    for drink in pub.drinks
      drunkenness_level += alcohol_level
    end
    return drunkenness_level
  end


end
