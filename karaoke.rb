class Karaoke

attr_reader :name
attr_accessor :till, :rooms, :entry_fee

  def initialize(name, till, rooms, entry_fee)
    @name = name
    @till = till
    @rooms = rooms
    @entry_fee = entry_fee
  end

  def receive_entry_fee
    @till += @entry_fee
  end


end
