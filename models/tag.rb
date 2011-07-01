class BoffinTagger
  class Tag 
    include DataMapper::Resource

    property :id, Integer
    property :name, String
  end
end
