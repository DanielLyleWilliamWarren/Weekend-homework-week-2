require("minitest/autorun")
require_relative("../customers.rb")
require_relative("../songs.rb")
require_relative("../rooms.rb")
require("minitest/rg")
class RoomsTest < MiniTest::Test

def setup
@customer1 = Customers.new("Bob", 50)
@customer2 = Customers.new("Dave", 10)
@customer3 = Customers.new("Mark", 50)
@customer4 = Customers.new("John", 10)
@customer5 = Customers.new("Peter", 50)
@customer6 = Customers.new("Paul", 10)
@customer7 = Customers.new("Augustus", 50)
@customer8 = Customers.new("Tiberius", 10)
@customer9 = Customers.new("Caligula", 50)
@customer10 = Customers.new("Claudius", 10)
@customer11 = Customers.new("Nero", 50)
@customer12 = Customers.new("Galba", 10)
@customer13 = Customers.new("Otho", 10)
@song1 = Songs.new("RESPECT")
@song2 = Songs.new("Moonage Daydream")
@song3 = Songs.new("Wild Thing")
track_list = [@song1, @song2, @song3]
current_occupancy1 = [@customer1]
current_occupancy2 = [@customer3, @customer4, @customer4, @customer5, @customer6, @customer7, @customer8, @customer9, @customer10, @customer11, @customer12]
@room1 = Rooms.new("The Hive", 0, 5, track_list, current_occupancy1)
@room2 = Rooms.new("Cab Vol", 0, 5, track_list, current_occupancy2)
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
assert_equal([@customer1,@customer2], @room1.customers())
end

def test_remove_customer_from_room
  @room1.remove_customer(@customer1)
  assert_equal([], @room1.customers)
end

def test_current_occupancey
  assert_equal(1, @room1.current_occupancy_level)
end

def test_max_occupancy
  assert_equal(true, @room1.max_occupancy())
end

def test_max_occupancy
  assert_equal(false, @room2.max_occupancy_full())
end

end
