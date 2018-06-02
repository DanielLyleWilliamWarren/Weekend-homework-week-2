require("minitest/autorun")
require_relative("../customers.rb")
require_relative("../songs.rb")
require_relative("../rooms.rb")
require("minitest/rg")
class RoomsTest < MiniTest::Test

def setup
@customer1 = Customers.new("Bob", 50)
@customer2 = Customers.new("Dave", 10)
@song1 = Songs.new("RESPECT")
@song2 = Songs.new("Moonage Daydream")
@song3 = Songs.new("Wild Thing")
track_list = [@song1, @song2, @song3]
current_occupancy = [@customer1]
@room1 = Rooms.new("The Hive", 0, 5, track_list, current_occupancy)
@room2 = Rooms.new("Cab Vol", 0, 5, track_list, 0)
end

def test_name_of_room
  assert_equal("The Hive", @room1.name_of_room)
end

def test_till_balance
assert_equal(0, @room1.till)
end

def test_entry_fee
assert_equal(5, @room1.entry_fee)
end

def test_pub_can_recieve_money
  @room1.recieve_money(5)
  assert_equal(5, @room1.till())
end

def test_room_has_customers
assert_equal([@customer1], @room1.customers)
end

def test_room_has_songs
assert_equal([@song1, @song2, @song3], @room1.track_list)
end

def test_room_can_play_song
assert_equal("Wild Thing IS BLASTING THROUGH THE SPEAKERS", @room1.play_song("Wild Thing"))
end

def test_add_customer_to_room
@room1.add_customer(@customer2)
assert_equal([@customer1,@customer2], @room1.customers)
end

def test_remove_customer_from_room
  @room1.remove_customer(@customer1)
  assert_equal([], @room1.customers)
end

def test_current_occupancey
  assert_equal(1, @room1.current_occupancy_level)
end



end
