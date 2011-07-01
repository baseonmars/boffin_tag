require 'rubygems'
require 'id3lib'
require 'sqlite3'

db = SQLite3::Database.new( "LC.db" )


rows = db.execute("SELECT f.id, d.path, f.filename from files f INNER JOIN directories d on f.directory = d.id")

rows.each_with_index do |row,index|



  puts "#{index}/#{rows.size} processing file /#{row[1]}#{row[2]}"

  filetags = db.execute("SELECT f.id, f.filename, t.name, tt.weight FROM tracktags tt inner join files f on f.id = tt.file join tags t on tt.tag = t.id where f.id = ?  order by tt.weight DESC", row[0])
  if filetags.size > 0
    top_tag = filetags.shift
    tag = ID3Lib::Tag.new("/#{row[1]}#{row[2]}")
    tag.genre = top_tag[2]

    filetags.each do |filetag|
      tag.comment = "#{tag.comment}\nlfm:tag:#{filetag[2]}"
    end

    puts "#{tag.title}: #{top_tag[2]}"

    tag.update!
  else 
    puts "not enough tag data"
  end
end


# for each file
# load tag
# write primary tag to genre
# write other tags somewhere else
# save tag
# print progress to screen
