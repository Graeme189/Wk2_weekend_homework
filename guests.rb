class Guests

attr_reader :guest, :cash, :favourite_song

def initialize(guest, cash, favourite_song)
  @guest = guest
  @cash = cash
  @favourite_song = favourite_song
end

end
