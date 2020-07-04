class Artist < ActiveRecord::Base
    has_many :songs

    def song_count
        @artist = self
        @artist.songs.collect {|song| song.id}.count 
    end
end
