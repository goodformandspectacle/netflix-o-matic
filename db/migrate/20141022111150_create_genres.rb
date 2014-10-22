class CreateGenres < ActiveRecord::Migration
  def change
    create_table :genres do |t|
      t.text :name
      t.integer :movies_count

      t.timestamps
    end
  end
end
