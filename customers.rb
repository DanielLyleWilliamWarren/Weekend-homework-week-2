class Customers

attr_reader :name, :wallet

def initialize(name, wallet)
  @name = name
  @wallet = wallet
end

def decrease_wallet(amount)
  @wallet -= amount
end

def pay_entry(room, fee)
  entry_price = room.entry_price(fee)
  self.decrease_wallet(entry_price)
  room1.recieve_money(entry_price)
end


end
