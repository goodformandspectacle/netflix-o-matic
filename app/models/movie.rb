class Movie < ActiveRecord::Base
  has_and_belongs_to_many :genres, join_table: 'movies_genres'
end
