class WordsController < ApplicationController

  def show
    @word = params[:id]
    
    limit = 30

    @genres = Genre.where(["lower(name) like ?", "%#{@word.downcase}%"]).where("movies_count > 0").order("random()").limit(limit)

    if @genres.length < limit
      @genres.push(Genre.where(["lower(name) like ?", "%#{@word.downcase}%"]).where("movies_count = 0").order("random()").limit(limit - @genres.length))
    end

    @genres = @genres.shuffle

  end

end
