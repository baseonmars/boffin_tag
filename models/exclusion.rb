class BoffinTagger
  class Exclusion 
    include DataMapper::Resource

    property :id, Integer
    property :path, String
    property :source, Integer
    property :subDirs, Integer
  end
end
