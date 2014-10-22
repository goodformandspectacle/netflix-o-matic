class LinkMoviesAndGenres < ActiveRecord::Migration
  def change
    create_table :movies_genres, id: false do |t|
      t.integer :movie_id
      t.integer :genre_id
    end
  end
end
