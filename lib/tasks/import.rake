require 'csv'

task :import => [:environment] do

  genres_file = "db/data/genres.csv"

  CSV.foreach(genres_file, :headers => true) do |row|
    Genre.create id: row[0], name: row[1], movies_count: row[2]
  end
  
  movies_file = "db/data/movies.csv"
  
  CSV.foreach(movies_file, :headers => true) do |row|
    Movie.create id: row[0], name: row[1], cover_url: row[3]
  end
  
  join_file = "db/data/movies_genres.csv"
  
  CSV.foreach(join_file, :headers => true) do |row|
    movie = Movie.find(row[0])
    movie.genres.push(Genre.find(row[1]))
    movie.save
  end

end