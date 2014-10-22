class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :name
      t.integer :movie_id
      t.text :cover_url

      t.timestamps
    end
  end
end
