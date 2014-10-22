class AddIndexes < ActiveRecord::Migration
  def change
    add_index :movies_genres, :movie_id
    add_index :movies_genres, :genre_id
  end
end
