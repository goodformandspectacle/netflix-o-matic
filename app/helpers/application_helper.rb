module ApplicationHelper

  def words_links(words)

    words.collect do |word|

      if word == "Movies"
        "Movies"
      else
        link_to(word, word_path(word))
      end

    end.join(" ").html_safe

  end

end
