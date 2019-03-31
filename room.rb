class Room

attr_reader :name, :capacity
attr_accessor :playlist, :occupants

  def initialize(name, capacity, playlist, occupants)
    @name = name
    @capacity = capacity
    @playlist = playlist
    @occupants = []
  end

  def add_guest_to_room(room, guest)
    if @occupants.length > @capacity
      return "Room full"
    else
      room.occupants << guest
    end
  end

  def remove_guest_from_room(room)
    room.occupants.pop(1)
  end

  def add_song_to_playlist(room, song)
    room.playlist << song
  end

  def does_it_have_my_song(room, guest)
    fav_song = room.playlist.map {|song| song.title == guest.favourite_song}
    if fav_song.length == 0
      return "boo!"
    else
      return "Woohoo!"
    end
  end



end
