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





end
