class Genre < ActiveRecord::Base


  def words
    name.scan(/(?:
      (?:from\sthe\s[\d]+s) | 
      (?:directed\sby\s[^\s]+\s[^\s]+) |
      (?:for\sages\s[\d]+\sto\s[\d]+) |
      (?:starring\s[^\s]+(?:\s[^\s]+)*) |
      (?:[^\s]+\s\&\s[^\s]+) |
      (?:on\sBlu\-ray) |
      (?:Kung\sFu) |
      (?:based\son\s
        (?:a\s)?
        (?:[Rr]eal\s)?
        [^\s]+
        (?:\s(?:[Bb]books|[Ll]iterature))?
        (?:\sby\s[^\s]+(?:\s[A-Z][^\s]+)*)?
      ) |
      (?:[^\s]+)
    )/x)
  end


end
