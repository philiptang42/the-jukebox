require 'pry'

class Playlist
  attr_accessor :songs

  def initialize(songs)
    song_list = [
      ["Hello - Lionel Ritchie"],
      ["Kokomo – The Beach Boys"],
      ["Girl You Know It’s True – Milli Vanilli"],
      ["Agadoo – Black Lace"],
      ["Down Under - Men at Work"],
      ["Nothing's Gonna Stop Us Now - Starship"],
      ["Get Outta My Dreams, Get Into My Car - Billy Ocean"],
      ["I Just Called To Say I Love You - Stevie Wonder"],
      ["Hangin' Tough - New Kids on the Block"],
      ["We Built This City - Starship"],
      ["Wake Me Up Before You Go Go - Wham!"],
      ["We Didn't Start The Fire - Billy Joel"],
      ["I Wanna Dance With Somebody - Whitney Houston"],
      ["U Can't Touch This - MC Hammer"]
    ]
    @songs = song_list
  end

  def shuffle!
    @songs = songs.shuffle
  end

  def play!
    return songs.shift
    @songs = songs.delete_at(songs[0])
  end

  def add_track(track)
    song_list = [
      ["Hello - Lionel Ritchie"],
      ["Kokomo – The Beach Boys"],
      ["Girl You Know It’s True – Milli Vanilli"],
      ["Agadoo – Black Lace"],
      ["Down Under - Men at Work"],
      ["Nothing's Gonna Stop Us Now - Starship"],
      ["Get Outta My Dreams, Get Into My Car - Billy Ocean"],
      ["I Just Called To Say I Love You - Stevie Wonder"],
      ["Hangin' Tough - New Kids on the Block"],
      ["We Built This City - Starship"],
      ["Wake Me Up Before You Go Go - Wham!"],
      ["We Didn't Start The Fire - Billy Joel"],
      ["I Wanna Dance With Somebody - Whitney Houston"],
      ["U Can't Touch This - MC Hammer"]
    ]
    song = []
    song << track
    if song_list.include?(song)
      @songs = songs << song
      return true
    else
      return false
    end
  end

end

binding.pry
