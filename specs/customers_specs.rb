require("minitest/autorun")
require_relative("../customers.rb")
require_relative("../rooms.rb")
require_relative("../songs.rb")
require("minitest/rg")
class CustomersTest < MiniTest::Test

def setup
  @customer1 = Customers.new("Bob", 50)
  @customer2 = Customers.new("Dave", 10)
  @song1 = Songs.new("RESPECT")
  @song2 = Songs.new("Moonage Daydream")
  @song3 = Songs.new("Wild Thing")
  track_list = [@song1, @song2, @song3]
  current_occupancy = [@customer1]
  @room1 = Rooms.new("The Hive", 0, 5, track_list, current_occupancy)
  # @room2 = Rooms.new("Cab Vol", 0, 5, track_list, current_occupancy2)
end

def test_customer_has_name
  assert_equal("Bob", @customer1.name)
end

def test_customer_has_wallet
  assert_equal(50, @customer1.wallet)
end

def test_decrease_customer_wallet
  @customer1.decrease_wallet(5)
  assert_equal(45, @customer1.wallet())
end

def test_customer_can_pay_entry_fee
  @customer1.pay_entry(@room1,"The Hive")
  assert_equal(45, @customer1.wallet())
end





end
