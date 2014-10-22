class Genre < ActiveRecord::Base


  def words
    name.scan(/(?:
      (?:from\sthe\s[\d]+s) | 
      (?:directed\sby\s[^\s]+\s[^\s]+) |
      (?:for\sages\s[\d]+\sto\s[\d]+) |
      (?:[^\s]+)
    )/x)
  end


end
