class Pub


attr_reader :name , :till, :drinks

 def initialize(name, till, drinks)
    @name = name
    @till = till
    @drinks = drinks
 end

 def one_drink_sold
  return @drinks.pop()
 end

 def increase_money_in_till(drink)
   price = drink.price
   @till += price
 end

 def is_over_18?(age)
   if age >= 18
   return true
    end
  return false
  end

  




end
