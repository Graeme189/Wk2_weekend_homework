class Room

  attr_reader :room, :songs, :guests, :capacity

  def initialize(room, capacity, entry_fee)
    @room = room
    @capacity = capacity
    @entry_fee = entry_fee
    @songs = []
    @guests = []
  end

  def add_guest(guests)
    @guests << guests
  end

  def remove_guest(name)
    @guests.delete(name)
  end

  def count_guests
    return @guests.count
  end

  def add_song(name)
    @songs << name
  end

  def count_songs
    return @songs.count
  end

  def over_capacity
    if @guests.count > capacity
      return "This room is full"
    end
  end

end
