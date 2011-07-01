class BoffinTagger
  class TrackTag 
    include DataMapper::Resource

    property :weight, Float

    belongs_to :tag
    belongs_to :file
  end
end
