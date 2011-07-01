class BoffinTagger
  class Artist
    include DataMapper::Resource

    property :id, Integer
    property :lowercase_name, String
  end
end
