class Room

attr_reader :name, :capacity
attr_accessor :playlist, :occupants

  def initialize(name, capacity, playlist, occupants)
    @name = name
    @capacity = capacity
    @playlist = playlist
    @occupants = []
  end

  def add_guest_to_room(guest)
    if @occupants.length > @capacity
      return "Room full"
    else
      @occupants << guest
    end
  end

  def remove_guest_from_room()
    @occupants.pop(1)
  end

  def add_song_to_playlist(song)
    @playlist << song
  end




end
