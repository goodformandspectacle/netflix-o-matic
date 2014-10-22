class Genre < ActiveRecord::Base
  has_and_belongs_to_many :movies, -> { uniq }, join_table: 'movies_genres'

  def words
    name.scan(/(?:
      (?:from\sthe\s[\d]+s) | 
      (?:\sby\s[^\s]+\s[^\s]+) |
      (?:for\sages\s[\d]+\sto\s[\d]+) |
      (?:about\s(?:Trucks,\sTrains\s&\sPlanes|[^\s]+\s\&\s[^\s]+|[^\s]+)) |
      (?:(?:(?:directed|created)\sby|starring)\s[^\s]+(?:\s[^\s]+)*) |
      (?:[^\s]+\s\&\s[^\s]+) |
      (?:on\sBlu\-ray) |
      (?:set\sin\s(?:the\s)?[^\s]+(?:\s(?:Times|Era|Ages|America))?) |
      (?:Kids'\sTV) |
      (?:(?:North|East|South|West|Southeast)\s[^\s]+) |
      (?:Kung\sFu) |
      (?:Hidden\s[^\s]+) |
      (?:Best\s[^\s]+) |
      (?:for\sHopeless\sRomantics) |
      (?:Road\sTrip) |
      (?:Golden\sGlobe) |
      (?:[Ff]eaturing\s(?:a\s)?(?:[Ss]trong\s)?(?:[Ff]emale\s)?[^\s]+) |
      (?:Film\sFestival) |
      (?:[\d]+th\s[^\s]+) |
      (?:Hong\sKong) |
      (?:Fairy\sTales?) |
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
