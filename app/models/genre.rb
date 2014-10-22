class Genre < ActiveRecord::Base
  has_and_belongs_to_many :movies, join_table: 'movies_genres'

  def words
    name.scan(/(?:
      (?:from\sthe\s[\d]+s) | 
      (?:directed\sby\s[^\s]+\s[^\s]+) |
      (?:for\sages\s[\d]+\sto\s[\d]+) |
      (?:[^\s]+)
    )/x)
  end


end
