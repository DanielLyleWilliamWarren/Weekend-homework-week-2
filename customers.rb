class Customers

attr_reader :name, :wallet

def initialize(name, wallet)
  @name = name
  @wallet = wallet
end

def decrease_wallet(amount)
  @wallet -= amount
end

def pay_entry(fee)
  entry_price = rooms.entry_fee(fee)
  self.decrease_wallet(entry_price)
  rooms.recieve_money(entry_price)
end


end
