class AddNetflixIdToGenre < ActiveRecord::Migration
  def change
    add_column :genres, :netflix_id, :integer
  end
end
