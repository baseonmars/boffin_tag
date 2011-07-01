class BoffinTagger
  class File 
    include DataMapper::Resource

    property :id, Integer
    property :filename, String
    property :modification_date, Integer
    property :lowercase_title, String
    property :artist, Integer
    property :album, String
    property :kbps, Integer
    property :duration, Integer
    property :mbid, String
    property :puid, String
    property :lastfm_fpid, Integer
    property :tag_time, Integer
  end
end
