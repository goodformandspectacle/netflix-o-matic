class WordsController < ApplicationController

  def show
    @word = params[:id]
    @genres = Genre.where(["name like ?", "%#{@word}%"]).order("random()").limit(10)
  end

end
