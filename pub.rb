class Pub


attr_reader :name , :till, :drinks

 def initialize(name, till, drinks)
    @name = name
    @till = till
    @drinks = drinks
 end

 def is_too_young?(customer)
   return customer.age < 18
  end

  def is_too_drunk?(customer)
    return customer.drunkenness_level >= 100
  end

 def serve(customer, drink)
    return if is_too_young?(customer)
    return if is_too_drunk?(customer)
    return if !@drinks.include?(drink)

    customer.buys_drink(drink)
    @till += drink.price

  end


end
