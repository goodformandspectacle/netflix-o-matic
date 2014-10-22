class AddNameIndexes < ActiveRecord::Migration
  def change
    add_index :genres, :name
    add_index :movies, :name
  end
end
