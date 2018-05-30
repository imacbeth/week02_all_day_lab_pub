class Customer

  attr_reader :name, :wallet

  def initialize(name, wallet)
    @name = name
    @wallet = wallet
    @drink = []
  end

  def buys_drink(drink)
    price = drink.price
    @wallet -= price
  end

  def buys_drink_from_pub(pub, drink)
    buys_drink(drink)
    pub.increase_money_in_till(drink)
  end


end
