module ApplicationHelper

  def words_links(words, current_word = nil)

    words.collect do |word|

      if word == "Movies"  || word == current_word
        word
      else
        link_to(word, word_path(word), class: 'word')
      end

    end.join(" ").html_safe

  end

  def netflix_genre_url(netflix_genre_id)
    "http://www2.netflix.com/WiAltGenre?agid=#{netflix_genre_id}"
  end

end
