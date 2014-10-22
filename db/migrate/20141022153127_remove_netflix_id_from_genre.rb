class RemoveNetflixIdFromGenre < ActiveRecord::Migration
  def change
    remove_column :genres, :netflix_id, :integer
  end
end
