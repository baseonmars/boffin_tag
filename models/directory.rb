class BoffinTagger
  class Directory 
    include DataMapper::Resource

    property :id, Integer
    property :source, Integer
    property :path, String
  end
end
