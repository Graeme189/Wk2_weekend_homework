class Guests

attr_reader :guest, :cash, :favourite_song

def initialize(guest, cash, favourite_song)
  @guest = guest
  @cash = cash
  @favourite_song = favourite_song
end

def favourite_song_playing(song)
  if @favourite_song == song
    return 'Woohoo!'
  else
    return 'Not so fond of this one'
  end
end

end
