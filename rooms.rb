class Rooms

attr_reader :name_of_room, :till, :entry_fee, :track_list, :customers

def initialize(name_of_room, till, entry_fee, track_list, customers)
  @name_of_room = name_of_room
  @till = till
  @entry_fee = entry_fee
  @track_list = track_list
  @customers = customers
end

def play_song(title)
  for song in @track_list
    return "#{song.name} IS BLASTING THROUGH THE SPEAKERS" if song.name == title
  end
  # or
  # @track_list.each {|song| return "#{song.name} IS BLASTING THROUGH THE SPEAKERS" if song.name == title}
end

def add_customer(customer)
return @customers.push(customer)
end

def remove_customer(customer)
return @customers.delete(customer)
end

def current_occupancy_level()
  return @customers.count.to_i()
end

def recieve_money(income)
  @till += income
end

def max_occupancy
true if current_occupancy_level <= 11
end

def max_occupancy_full
false if current_occupancy_level >= 10
end

end
