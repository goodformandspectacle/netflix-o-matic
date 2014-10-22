class Genre < ActiveRecord::Base


  def words
    name.scan(/(?:(?:from\sthe\s[\d]+)|(?:directed by [^\s]+\s[^\s]+)|(?:[^\s]+))/)
  end


end
